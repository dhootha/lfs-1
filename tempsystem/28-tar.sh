#!/bin/sh
#
# Tar
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/tar/tar-1.28.tar.xz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf tar-1.28
tar -xvf tar-1.28.tar.xz
cd tar-1.28
FORCE_UNSAFE_CONFIGURE=1 \
./configure --prefix=/tools 
make -j 5
#make check
make install
