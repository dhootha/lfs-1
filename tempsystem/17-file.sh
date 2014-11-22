#!/bin/sh
#
# File
set -e
WGETLIST="\
ftp://ftp.astron.com/pub/file/file-5.19.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf file-5.19
tar -xvf file-5.19.tar.gz
cd file-5.19
./configure --prefix=/tools
make -j 5
#make check
make install

