#!/bin/bash
sudo apt-get -y update
sudo apt-get -y dist-upgrade
wget -O- http://neuro.debian.net/lists/xenial.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9
sudo apt-get -y update
sudo apt-get -y install fsl

echo ". /etc/fsl/fsl.sh" >> ~/.bashrc
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
