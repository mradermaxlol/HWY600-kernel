### Configuring compiler
##### You HAVE to follow this part's instructions!
export PATH=~/TOOLCHAIN_PATH/bin/arm-gnueabi

or

export PATH=~/TOOLCHAIN_PATH/bin/arm-eabi

and so on


For example: export CROSS_COMPILE=~/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-eabi-

Another example:
export CROSS_COMPILE=~/Linaro/bin/arm-eabi-

### Building kernel
Build command is:

./mk -o=TARGET_BUILD_VARIANT=user y600 n k

It will produce a binary image, located at %WORKDIR%/out/Download/flash/kernel_y600.bin

You will then have to connect the kernel with ramdisk from [this repo](https://github.com/mradermaxlol/HWY600-ramdisk) to get a working image  
To do so, make a compressed cpio and provide it and kernel to mkbootimg utility
