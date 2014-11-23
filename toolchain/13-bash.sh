#!/bin/sh
#
# Bash
set -e
WGETLIST="\
http://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf bash-4.3
tar -xvf bash-4.3.tar.gz
cd bash-4.3
./configure --prefix=/tools --without-bash-malloc
make -j 5
#make tests
make install
ln -sv bash /tools/bin/sh


