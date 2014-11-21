#!/bin/sh
#
# Binutils Pass 2
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2
http://www.linuxfromscratch.org/patches/lfs/development/binutils-2.24-load_gcc_lto_plugin_by_default-1.patch
http://www.linuxfromscratch.org/patches/lfs/development/binutils-2.24-lto_testsuite-1.patch"
cd $LFS/sources
wget -c $WGETLIST
rm -rf binutils-2.24 binutils-build
tar -xvf binutils-2.24.tar.bz2
mkdir -v binutils-build
cd binutils-build
CC=$LFS_TGT-gcc                \
AR=$LFS_TGT-ar                 \
RANLIB=$LFS_TGT-ranlib         \
../binutils-2.24/configure     \
    --prefix=/tools            \
    --disable-nls              \
    --disable-werror           \
    --with-lib-path=/tools/lib \
    --with-sysroot
make -j 5
make install
make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin



