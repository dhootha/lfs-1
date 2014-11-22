#!/bin/sh
#
# Xz
set -e
WGETLIST="\
http://tukaani.org/xz/xz-5.0.5.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf xz-5.0.5
tar -xvf xz-5.0.5.tar.xz
cd xz-5.0.5
./configure --prefix=/tools                
make -j 5
make check
make install


