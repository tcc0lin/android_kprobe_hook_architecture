KERNEL_OUT=/xxxxx/xiaomi_kernel_opensource-selene-r-oss/out
TOOLCHAIN=/xxxxx/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9-lineage-19.1/bin/aarch64-linux-android-
MODULE_NAME := Sample
MODULE_OBJS := module.o
$(MODULE_NAME)-objs:=$(MODULE_OBJS)
obj-m := $(MODULE_NAME).o
all:
	make ARCH=arm64  CROSS_COMPILE=$(TOOLCHAIN) -C $(KERNEL_OUT) M=$(shell pwd)  modules
clean:
	make -C $(KERNEL_OUT) M=$(shell pwd) clean
