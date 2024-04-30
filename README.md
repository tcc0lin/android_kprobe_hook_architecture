# android_kprobe_hook_architecture


### 1. Preparation Phase
- a phone like redmi note 11
- kernel source code from [Xiaomi_Kernel_OpenSource](https://github.com/MiCode/Xiaomi_Kernel_OpenSource)
- a kernel product of compiled success（don't forget open support of kprobe at arch/arm64/configs/xxxx_defconfig）
    ```
    CONFIG_KPROBES=y
    CONFIG_HAVE_KPROBES=y
    CONFIG_KPROBE_EVENTS=y
    ```
### 2. LKM Compile Phase
1. git clone https://github.com/tcc0lin/android_kprobe_hook_architecture
2. cd android_kprobe_hook_architecture
3. modify path on Makefile
    ```c
    KERNEL_OUT=/xxxxx/xiaomi_kernel_opensource-selene-r-oss/out
    TOOLCHAIN=/xxxxx/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9-lineage-19.1/bin/aarch64-linux-android-
    ```
4. build
    ```c
    make
    ```
    then you can get the following file
    ```
    Sample.ko Sample.mod.c Sample.mod.o Sample.o
    ```
5. install LKM
    ```c
    insmod Sample.ko
    ```
