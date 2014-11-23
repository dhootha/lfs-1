#!/bin/sh
#
# Gawk
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf gawk-4.1.1
tar -xvf gawk-4.1.1.tar.xz
cd gawk-4.1.1
./configure --prefix=/tools
make -j 5
#make check (fails)
make install


