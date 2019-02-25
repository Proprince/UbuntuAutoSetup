#!/bin/bash  

echo ""
echo "#######################################################################"
echo "#                          Start to configurate!                      #"
echo "#                                 V 1.0.0                             #"
echo "#######################################################################"
echo ""

# change software source
echo 'deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
' | sudo tee /etc/apt/sources.list

# update system
echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y

mkdir $HOME/.pip
echo "[global]" > $HOME/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> $HOME/.pip/pip/conf

################# install terminal softwares #####################
# remove libre, firefox, amazon
sudo apt-get remove libreoffice-* -y
sudo apt-get remove firefox* -y
sudo apt-get remove imagemagick* -y

# fixed time zone problem
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true

./term_tools.sh
./gui_softwares.sh
./other_softwares.sh

# set minimize
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

# shadowsocksR
softwareDir="$HOME/Softwares"
cd ${softwareDir}
git clone https://github.com/ssrbackup/shadowsocksr
cd shadowsocksr
cp config.json /etc/shadowsocks.json
sudo ln -s /etc/shadowsocks.json shadowsocks.json
echo "python $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json" > my_run.sh
sudo chmod a+x my_run.sh
echo "python $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json" > rc.sh

echo ""
echo "#######################################################################"
echo "#                          FINISH!!!!!!!!!                            #"
echo "#######################################################################"
echo ""

sudo sync;sync;sync;reboot
