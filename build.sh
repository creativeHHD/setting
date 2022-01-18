#!/bin/bash

chmod +x os-installer


mv os-install ../../usr/etc
mv os-installer ../../usr/bin


cd ..
cd ../usr/etc/apt
rm -rf sources.list.d
cd


apt install nano -y
apt-get update -y
apt-get upgrade -y
apt upgrade -y
pkg install proot-distro -y
cd os-installer
pkg install python -y

os-installer
