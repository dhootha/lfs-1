#!/bin/sh
#
# Findutils
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf findutils-4.4.2
tar -xvf findutils-4.4.2.tar.gz
cd findutils-4.4.2
./configure --prefix=/tools
make -j 5
#make check
make install

