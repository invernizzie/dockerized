#!/bin/sh

wget http://download.zeromq.org/zeromq-4.0.1.tar.gz
tar -zxf zeromq-4.0.1.tar.gz
cd zeromq-4.0.1
./configure
make && make install
ldconfig
cd ..
rm -Rf zeromq-*
