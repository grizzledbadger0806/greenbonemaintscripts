#!/bin/bash
echo "############################### update ###############################"
sudo apt-get update -y
echo "############################### upgrade ###############################"
sudo apt-get upgrade -y
echo "############################### dist-upgrade ###############################"
sudo apt-get dist-upgrade -y
echo "############################### Fix Broken Installs ###############################"
sudo apt --fix-broken install -y
echo "############################### AutoRemove ###############################"
sudo apt-get autoremove -y
echo "############################### clean ###############################"
sudo apt-get clean -y
echo "############################### check ###############################"
sudo apt-get check -y
