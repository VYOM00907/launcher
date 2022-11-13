#!/bin/bash
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
