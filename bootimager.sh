#!/bin/sh
###
### Bootimager by mradermaxlol
###
### Pretty damn primitive, but effective!
###
### How to use it?
### So, you put a kernel binary into ~/ dir, aka home directory and you name
### it as kernel.bin
### Then, you cd your ramdisk dir and run this script, like
### [~/ramdisk]: $ sh ~/bootimager.sh
### And it packs your ramdisk, then uses it and the kernel binary to build
### a working boot.img with mkbootimg
###
echo 'Creating a compressed cpio archive...'
find . | cpio -o -H newc | gzip > ramdisk.cpio.gz
echo ''
echo 'Creating boot.img...'
mkbootimg --kernel ~/kernel.bin --ramdisk ramdisk.cpio.gz -o ~/boot.img
echo ''
echo 'Done!'