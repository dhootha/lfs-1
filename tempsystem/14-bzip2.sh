#!/bin/sh
#
# Bzip2
set -e
WGETLIST="\
http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf bzip2-1.0.6
tar -xvf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6
make -j 5
make PREFIX=/tools install

