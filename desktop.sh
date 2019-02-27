#!/bin/bash  

echo ""
echo "#######################################################################"
echo "#                          Start to configurate!                      #"
echo "#                                 V 1.0.0                             #"
echo "#######################################################################"
echo ""

# change software source
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo '# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse' | sudo tee /etc/apt/sources.list

# update system
echo "update system"
sudo apt-get update -y

mkdir $HOME/.pip
echo "[global]" > $HOME/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> $HOME/.pip/pip/conf

################# install terminal softwares #####################
# remove firefox
sudo apt-get remove firefox* -y

sudo apt-get upgrade -y

# fixed time zone problem
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true

./term_tools.sh
./gui_softwares.sh
./other_softwares.sh

# shadowsocksR
softwareDir="$HOME/Softwares"
cd ${softwareDir}
git clone https://github.com/ssrbackup/shadowsocksr
cd shadowsocksr
cp config.json /etc/shadowsocks.json
sudo ln -s /etc/shadowsocks.json shadowsocks.json
echo "python3 $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json" > my_run.sh
sudo chmod a+x my_run.sh
echo "python3 $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json" > rc.sh

echo ""
echo "#######################################################################"
echo "#                          FINISH!!!!!!!!!                            #"
echo "#######################################################################"
echo ""

sudo sync;sync;sync;reboot
