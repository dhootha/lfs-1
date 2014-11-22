#!/bin/sh
#
# M4
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/m4/m4-1.4.17.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf m4-1.4.17
tar -xvf m4-1.4.17.tar.xz
cd m4-1.4.17
./configure --prefix=/tools
make -j 5
#make check
make install

