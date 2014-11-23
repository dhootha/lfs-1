#!/bin/sh
#
# Texinfo
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/texinfo/texinfo-5.2.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf texinfo-5.2
tar -xvf texinfo-5.2.tar.xz
cd texinfo-5.2
./configure --prefix=/tools 
make -j 5
#make check
make install

