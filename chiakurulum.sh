#!/bin/bash

apt update -y
apt upgrade -y 
apt-get update -y 
apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install make -y
sudo apt-get install screen -y
sudo apt --reinstall install fuse -y 
sudo apt-get install rclone -y
sudo apt-get install unzip -y


mkdir /root/plt

cd ~

unzip kurulum.zip

cd ~

rm -rf kurulum.zip

cd ~ 

mkdir /root/.config
mkdir /root/.config/rclone
cd

cd ~

mv rclone.conf /root/.config/rclone

mv accounts /root/.config/rclone

cd



sudo -v ; curl https://rclone.org/install.sh | sudo bash



cd ~
mv /root/kurulum/x.sh /root
mv /root/kurulum/automadmax.sh /root
screen -dmS oto bash -c 'bash automadmax.sh'

screen -dmS plot bash -c 'bash x.sh'

mv /root/upload.sh /root/plt/
cd /root/plt
screen -dmS upload bash -c 'bash upload.sh'

cd ~

screen -x plot
cd ~

