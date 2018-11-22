#!/bin/bash

CORES=$(lscpu | grep "CPU(s):      " | awk '{ print $2; }')
cd /tmp
wget https://epics.anl.gov/download/base/baseR3.14.12.8.tar.gz
tar -xzf baseR3.14.12.8.tar.gz
mkdir /usr/local/epics
mv base-3.14.12.8 /usr/local/epics
cd /usr/local/epics/base-3.14.12.8
make -j$CORES
ln -s /usr/local/epics/base-3.14.12.8 /usr/local/epics/base
rm /tmp/baseR3.14.12.8.tar.gz
