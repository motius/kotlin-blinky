# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/plam/Projects/MOTIUS/kotblinky

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/plam/Projects/MOTIUS/kotblinky/build

# Include any dependencies generated for this target.
include zephyr/CMakeFiles/offsets.dir/depend.make

# Include the progress variables for this target.
include zephyr/CMakeFiles/offsets.dir/progress.make

# Include the compile flags for this target's objects.
include zephyr/CMakeFiles/offsets.dir/flags.make

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj: zephyr/CMakeFiles/offsets.dir/flags.make
zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj: /home/plam/Projects/zephyr/arch/arm/core/offsets/offsets.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/plam/Projects/MOTIUS/kotblinky/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj"
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && ccache /home/plam/.konan/dependencies/gcc-arm-none-eabi-7-2017-q4-major-linux/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj   -c /home/plam/Projects/zephyr/arch/arm/core/offsets/offsets.c

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.i"
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && /home/plam/.konan/dependencies/gcc-arm-none-eabi-7-2017-q4-major-linux/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/plam/Projects/zephyr/arch/arm/core/offsets/offsets.c > CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.i

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.s"
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && /home/plam/.konan/dependencies/gcc-arm-none-eabi-7-2017-q4-major-linux/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/plam/Projects/zephyr/arch/arm/core/offsets/offsets.c -o CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.s

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.requires:

.PHONY : zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.requires

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.provides: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.requires
	$(MAKE) -f zephyr/CMakeFiles/offsets.dir/build.make zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.provides.build
.PHONY : zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.provides

zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.provides.build: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj


# Object files for target offsets
offsets_OBJECTS = \
"CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj"

# External object files for target offsets
offsets_EXTERNAL_OBJECTS =

zephyr/liboffsets.a: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj
zephyr/liboffsets.a: zephyr/CMakeFiles/offsets.dir/build.make
zephyr/liboffsets.a: zephyr/CMakeFiles/offsets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/plam/Projects/MOTIUS/kotblinky/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liboffsets.a"
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/offsets.dir/cmake_clean_target.cmake
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/offsets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zephyr/CMakeFiles/offsets.dir/build: zephyr/liboffsets.a

.PHONY : zephyr/CMakeFiles/offsets.dir/build

zephyr/CMakeFiles/offsets.dir/requires: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj.requires

.PHONY : zephyr/CMakeFiles/offsets.dir/requires

zephyr/CMakeFiles/offsets.dir/clean:
	cd /home/plam/Projects/MOTIUS/kotblinky/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/offsets.dir/cmake_clean.cmake
.PHONY : zephyr/CMakeFiles/offsets.dir/clean

zephyr/CMakeFiles/offsets.dir/depend:
	cd /home/plam/Projects/MOTIUS/kotblinky/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/plam/Projects/MOTIUS/kotblinky /home/plam/Projects/zephyr /home/plam/Projects/MOTIUS/kotblinky/build /home/plam/Projects/MOTIUS/kotblinky/build/zephyr /home/plam/Projects/MOTIUS/kotblinky/build/zephyr/CMakeFiles/offsets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : zephyr/CMakeFiles/offsets.dir/depend

