#!/bin/bash

do_env(){
	export CROSS_COMPILE=/root/data/work/riot-env/fsl-linaro-toolchain/bin/arm-fsl-linux-gnueabi-
	export ARCH=arm
}

do_make(){
	make -j4
	cp u-boot.bin ~/data/u-boot-mx6solo-RIoTboard.bin
}

case $1 in
	(make)
		do_make
		;;
	(env)
		do_env
		;;
	(*)
		echo "Command no found"
		;;
esac
