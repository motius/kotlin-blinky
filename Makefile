ZEPHYR_BASE=~/Projects/zephyr

all: nucleo_f412zg

stm32f4_disco:
	bash ./build.sh -b stm32f4_disco -z $(ZEPHYR_BASE)

nucleo_f412zg:
	bash ./build.sh -b nucleo_f412zg -z $(ZEPHYR_BASE)
