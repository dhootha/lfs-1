#!/bin/sh
#
# Diffutils
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf diffutils-3.3
tar -xvf diffutils-3.3.tar.xz
cd diffutils-3.3
./configure --prefix=/tools
make -j 5
#make check
make install

