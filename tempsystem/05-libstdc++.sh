#!/bin/sh
#
# Libstdc++
WGETLIST="\
http://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2"
cd $LFS/sources
wget -c $WGETLIST
rm -rf gcc-4.9.1 gcc-build
tar -xvf gcc-4.9.1.tar.bz2
mkdir -pv gcc-build
cd gcc-build
../gcc-4.9.1/libstdc++-v3/configure \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-shared                \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/4.9.1
make -j 5 
make install

