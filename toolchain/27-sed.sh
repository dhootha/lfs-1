#!/bin/sh
#
# Sed
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.bz2"
cd $LFS/sources
wget -c $WGETLIST
rm -rf sed-4.2.2
tar -xvf sed-4.2.2.tar.bz2
cd sed-4.2.2
./configure --prefix=/tools
make -j 5
#make check
make install

