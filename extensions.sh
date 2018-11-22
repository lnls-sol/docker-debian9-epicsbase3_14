#!/bin/bash

cd /usr/local/epics/
wget http://www.aps.anl.gov/epics/download/extensions/extensionsTop_20120904.tar.gz
tar -xzf  extensionsTop_20120904.tar.gz

cd /usr/local/epics/extensions
make
make install
rm -fv /usr/local/epics/extensionsTop_20120904.tar.gz

cd /usr/local/epics/extensions/src
wget http://www.aps.anl.gov/epics/download/extensions/msi1-7.tar.gz
tar -xzf msi1-7.tar.gz

cd msi1-7/
make
make install
rm -fv /usr/local/epics/extensions/src/msi1-7.tar.gz

cd /usr/local/epics/extensions/src
wget http://downloads.sourceforge.net/project/procserv/2.6.1/procServ-2.6.1.tar.gz
tar -xzf procServ-2.6.1.tar.gz

cd procServ-2.6.1/
./configure
make
make install
rm -fv /usr/local/epics/extensions/src/procServ-2.6.1.tar.gz
