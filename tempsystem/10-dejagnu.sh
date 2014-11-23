#!/bin/sh
#
# DejaGNU
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/dejagnu/dejagnu-1.5.1.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf dejagnu-1.5.1
tar -xvf dejagnu-1.5.1.tar.gz
cd dejagnu-1.5.1
./configure --prefix=/tools
make -j 5
make install
#make check


