#!/bin/sh
#
# Linux API Headers
WGETLIST="\
https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.16.2.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf linux-3.16.2
tar -xvf linux-3.16.2.tar.xz
cd linux-3.16.2
make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include




