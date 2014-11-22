#!/bin/sh
#
# Util-linux
set -e
WGETLIST="\
https://www.kernel.org/pub/linux/utils/util-linux/v2.25/util-linux-2.25.1.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf util-linux-2.25.1
tar -xvf util-linux-2.25.1.tar.xz
cd util-linux-2.25.1
./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            PKG_CONFIG=""
make -j 5
make install

