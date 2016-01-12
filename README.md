### Building kernel
You first have to configure your buildenv - check [this](https://github.com/mradermaxlol/HWY600-kernel/wiki/Getting-the-sources-&-configuring-buildenv) out.

Build command is:

./mk -o=TARGET_BUILD_VARIANT=user y600 n k

It will produce a binary image, located at %WORKDIR%/out/Download/flash/kernel_y600.bin

You will then have to connect the kernel with ramdisk from [this repo](https://github.com/mradermaxlol/HWY600-ramdisk) to get a working image  
To do so, make a compressed cpio and provide it and kernel to mkbootimg utility
