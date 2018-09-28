#!/bin/bash  

echo ""
echo "#######################################################################"
echo "#                          Start to configurate!                      #"
echo "#                                 V 1.0.0                             #"
echo "#######################################################################"
echo ""

# update system
echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y

./term_tools.sh

echo ""
echo "#######################################################################"
echo "#                          FINISH!!!!!!!!!                            #"
echo "#######################################################################"
echo ""

sudo sync;sync;sync;reboot
