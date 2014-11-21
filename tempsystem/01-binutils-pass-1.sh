#!/bin/sh
#
# Binutils Pass 1
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
../binutils-2.24/configure     \
    --prefix=/tools        \
    --with-sysroot=$LFS        \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT          \
    --disable-nls              \
    --disable-werror
make -j 5
case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac
make install




