#!/bin/sh
#
# Check
set -e
WGETLIST="\
http://sourceforge.net/projects/check/files/check/0.9.14/check-0.9.14.tar.gz"
cd $LFS/sources
#wget -c $WGETLIST
rm -rf check-0.9.14
tar -xvf check-0.9.14.tar.gz
cd check-0.9.14
PKG_CONFIG= ./configure --prefix=/tools
make -j 5
#make check
make install


