#!/bin/sh
#
# Gzip
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/gzip/gzip-1.6.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf gzip-1.6
tar -xvf gzip-1.6.tar.xz
cd gzip-1.6
./configure --prefix=/tools
make -j 5
#make check
make install
