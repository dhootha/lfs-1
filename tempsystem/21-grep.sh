#!/bin/sh
#
# Grep
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/grep/grep-2.20.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf grep-2.20
tar -xvf grep-2.20.tar.xz
cd grep-2.20
./configure --prefix=/tools
make -j 5
#make check
make install
