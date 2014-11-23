#!/bin/sh
#
# Make
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/make/make-4.0.tar.bz2"
cd $LFS/sources
wget -c $WGETLIST
rm -rf make-4.0
tar -xvf make-4.0.tar.bz2
cd make-4.0
./configure --prefix=/tools --without-guile
make -j 5
#make check
make install
