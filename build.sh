#!/usr/bin/env bash

BOARD=stm32f4_disco
export ZEPHYR_BASE="PLEASE_SET_ZEPHYR_BASE"

if [ "$ZEPHYR_BASE" == "PLEASE_SET_ZEPHYR_BASE" ] ; then
    export ZEPHYR_BASE="zephyr"
fi

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )

#
# Copyright (c) 2015 Wind River Systems, Inc.
#
# SPDX-License-Identifier: Apache-2.0
#

# In zsh the value of $0 depends on the FUNCTION_ARGZERO option which is
# set by default. FUNCTION_ARGZERO, when it is set, sets $0 temporarily
# to the name of the function/script when executing a shell function or
# sourcing a script. POSIX_ARGZERO option, when it is set, exposes the
# original value of $0 in spite of the current FUNCTION_ARGZERO setting.
#
# Note: The version of zsh need to be 5.0.6 or above. Any versions below
# 5.0.6 maybe encoutner errors when sourcing this script.
if [ -n "$ZSH_VERSION" ]; then
	DIR="${(%):-%N}"
	if [ $options[posixargzero] != "on" ]; then
		setopt posixargzero
		NAME=$(basename -- "$0")
		setopt posixargzero
	else
		NAME=$(basename -- "$0")
	fi
else
	DIR="${BASH_SOURCE[0]}"
	NAME=$(basename -- "$0")
fi

if [ "X$NAME" "==" "Xzephyr-env.sh" ]; then
    echo "Source this file (do NOT execute it!) to set the Zephyr Kernel environment."
    exit
fi

# You can further customize your environment by creating a bash script called
# .zephyrrc in your home directory. It will be automatically
# run (if it exists) by this script.

if uname | grep -q "MINGW"; then
    win_build=1
    PWD_OPT="-W"
else
    win_build=0
    PWD_OPT=""
fi

# identify OS source tree root directory
export ZEPHYR_BASE=$( builtin cd "$( dirname "$DIR" )" && pwd ${PWD_OPT})
unset PWD_OPT

scripts_path=${ZEPHYR_BASE}/scripts
if [ "$win_build" -eq 1 ]; then
    scripts_path=$(echo "/$scripts_path" | sed 's/\\/\//g' | sed 's/://')
fi
unset win_build
if ! echo "${PATH}" | grep -q "${scripts_path}"; then
    export PATH=${scripts_path}:${PATH}
fi
unset scripts_path

# enable custom environment settings
zephyr_answer_file=~/zephyr-env_install.bash
[ -f ${zephyr_answer_file} ] && {
	echo "Warning: Please rename ~/zephyr-env_install.bash to ~/.zephyrrc";
	. ${zephyr_answer_file};
}
unset zephyr_answer_file
zephyr_answer_file=~/.zephyrrc
[ -f ${zephyr_answer_file} ] &&  . ${zephyr_answer_file};
unset zephyr_answer_file

if [ -z "$KONAN_HOME" ]; then
    PATH="$DIR/../../dist/bin:$DIR/../../bin:$PATH"
else
    PATH="$KONAN_HOME/bin:$PATH"
fi

KONAN_USER_DIR="$HOME/.konan"
KONAN_DEPS="$KONAN_USER_DIR/dependencies"

if [ x$TARGET == x ]; then
case "$OSTYPE" in
  darwin*)  TOOLCHAIN=gcc-arm-none-eabi-7-2017-q4-major-mac ;;
  linux*)   TOOLCHAIN=gcc-arm-none-eabi-7-2017-q4-major-linux ;;
  *)        echo "unknown: $OSTYPE" && exit 1;;
esac
fi

GCC_ARM="$KONAN_DEPS/$TOOLCHAIN"

rm -rf $DIR/build || exit 1
mkdir -p $DIR/build && cd $DIR/build

export ZEPHYR_GCC_VARIANT=gccarmemb
export GCCARMEMB_TOOLCHAIN_PATH=$GCC_ARM

[ -f CMakeCache.txt ] || cmake -DCMAKE_VERBOSE_MAKEFILE=ON -DBOARD=$BOARD .. || exit 1

# We need generated headers to be consumed by `cinterop`,
# so we preconfigure the project with `make zephyr`.
make zephyr

. $DIR/c_interop/platforms/$BOARD.sh

rm -f program.o

mkdir -p $DIR/build/kotlin

konanc $DIR/src/main.kt \
        -target zephyr_$BOARD \
        -r $DIR/c_interop/platforms/build \
        -l $BOARD \
        -opt -g -o $DIR/build/kotlin/program || exit 1

make || exit 1

# make flash
#
# For our STM32 boards the OpenOCD unable to flash the binary,
# so we go with the following alternative utility:

echo 
echo "Now run 'make flash' to flash the .bin to the card."
echo
echo "Or, if that doesn't work, like, for example if you have an stm32f4-disco,"
echo "run the following command:"
echo "st-flash --reset write build/zephyr/zephyr.bin 0x08000000"
echo
