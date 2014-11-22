#!/bin/sh
#
# Patch
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/patch/patch-2.7.1.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf patch-2.7.1
tar -xvf patch-2.7.1.tar.xz
cd patch-2.7.1
./configure --prefix=/tools
make -j 5
#make check
make install
