#!/bin/bash  

echo ""
echo "#######################################################################"
echo "#                          Start to configurate!                      #"
echo "#                                 V 1.0.0                             #"
echo "#######################################################################"
echo ""


echo ""
tempDir="$HOME/Downloads/setup_temp"
sudo mkdir ${tempDir}
cd ${tempDir}

softwareDir="$HOME/Softwares"
mkdir ${softwareDir}

# change software source
echo 'deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
' | sudo tee /etc/apt/sources.list

# update system
echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y


################# install terminal softwares #####################
# remove libre, firefox, amazon
sudo apt-get remove libreoffice-* -y
sudo apt-get remove firefox* -y
sudo apt-get remove imagemagick* -y


# install some tools:
echo "install git"
sudo apt-get install git -y
echo "install curl"
sudo apt-get install curl -y
echo "install cmake"
sudo apt-get install cmake -y
echo "install vim"
sudo apt-get install -y vim
echo "install unzip"
sudo apt-get install unzip -y
# echo "install jd-json parse tool in linux"
# sudo apt-get install jd -y
echo "install unrar"
sudo apt-get install unrar -y
echo "install tmux"
sudo apt-get install tmux -y
echo "install aria2"
sudo apt-get install -y aria2
echo "install zsh"
sudo apt-get install -y zsh
echo "install tofrodos"
sudo apt-get install -y tofrodos
echo "install aptitude"
sudo apt-get install -y aptitude
echo "install apt-transport-https"
sudo apt-get install -y apt-transport-https
echo "install fcitx"
sudo apt-get install -y fcitx
# Chinese Fonts
sudo apt-get install -y  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy fonts-arphic-ukai fonts-arphic-uming

sudo apt-get install -y python-pip
sudo apt-get install -y python3-pip
mkdir $HOME/.pip
echo "[global]" > $HOME/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> $HOME/.pip/pip/conf
##################################################################

################# install GUI softwares #####################
# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE -y
sudo add-apt-repository 'deb https://typora.io/linux ./' -y

# f.lux
sudo add-apt-repository ppa:nathan-renniewaldock/flux -y

# ultra-flat-icons
sudo add-apt-repository ppa:noobslab/icons -y

# meld
sudo apt-get install -y meld

# unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

# goldendict
sudo apt-get install -y goldendict

sudo apt-get update
sudo apt-get install -y sublime-text
sudo apt-get install --allow-unauthenticated -y typora
sudo apt-get install -y fluxgui
sudo apt-get install -y ultra-flat-icons

echo "install gnuplot5"
sudo apt-get install gnuplot5 -y
echo "install kolour paint"
sudo apt-get install  kolourpaint4 -y
#############################################################

echo ""
echo "#######################################################################"
echo "#                        INSTALL SOFTWARE                             #"
echo "#######################################################################"
echo ""

##### some links need to be updated !!!!

googleChromeLink="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sougouLink="http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=6nqfTsVkKHelL8DAMFtcXA&e=1536031562&fn=sogoupinyin_2.2.0.0108_amd64.deb"
wpsLink="http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb"
vscodeLink="https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code_1.26.1-1534444688_amd64.deb"
skypeLink="https://repo.skype.com/latest/skypeforlinux-64.deb"
virtualBoxLink="https://download.virtualbox.org/virtualbox/5.2.18/virtualbox-5.2_5.2.18-124319~Ubuntu~xenial_amd64.deb"
netMusicLink="http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb"
foxitLink="http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz"
vncLink="https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.18.625-Linux-x64.deb"


# install software
cd ${tempDir}

chromeName="chrome.deb"
sudo wget -O ${chromeName} -c ${googleChromeLink}
sudo dpkg -i ${chromeName}

sougouName="sougou.deb"
sudo wget -O ${sougouName} -c ${sougouLink}
sudo dpkg -i ${sougouName}
sudo apt-get install -fy
## need to setup manually

wpsName="wps.deb"
sudo wget -O ${wpsName} -c ${wpsLink}
sudo dpkg -i ${wpsName}

vscodeName="vscode.deb"
sudo wget -O ${vscodeName} -c ${vscodeLink}
sudo dpkg -i ${vscodeName}

skypeName="skype.deb"
sudo wget -O ${skypeName} -c ${skypeLink}
sudo dpkg -i ${skypeName}

virtualBoxName="virtualBox.deb"
sudo wget -O ${virtualBoxName} -c ${virtualBoxLink}
sudo dpkg -i ${virtualBoxName}
sudo apt-get install -fy

netMusicName="netMusic.deb"
sudo wget -O ${netMusicName} -c ${netMusicLink}
sudo dpkg -i ${netMusicName}

foxitName="foxit.tar.gz"
sudo wget -O ${foxitName} -c ${foxitLink}
tar -xzvf foxit.tar.gz
# ./xxx.run # need to setup by gui

vncName="vnc.deb"
sudo wget -O ${vncName} -c ${vncLink}
sudo dpkg -i ${vncLink}

# theme, setting in unity-tweak-tool
fbLink="https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb"
fbName="flatabulous.deb"
sudo wget -O ${fbName} -c ${fbLink}
sudo dpkg -i fbName

# #install genymotion
# genymotionLink="https://dl.genymotion.com/releases/genymotion-2.10.0/genymotion-2.10.0-linux_x64.bin"
# genymotionName="genymotion.bin"
# sudo wget -O ${genymotionName} --no-check-certificate -c ${genymotionLink}
# chmod +x ${genymotionName}
# sudo ./${genymotionName}

# fixed time zone problem
sudo timedatectl set-local-rtc true
sudo timedatectl set-ntp true

# set minimize
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

# setting grub default


# generate ssh
mkdir -pm 700 /home/$USER/.ssh
ssh-keygen -f /home/$USER/.ssh/id_rsa -N ''

# config git
git config --global user.name xxx
git config --global user.email xxx

# oh-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sudo sh
sudo apt-get install -y autojump
# Todo: cp config from git and get plugins
# use hard link, e.g. ln vimrc ~/.vimrc

# sublime-chinese
cd ${softwareDir}
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
cd sublime-text-imfix
./sublime-imfix

# shadowsocksR
cd ${softwareDir}
git clone https://github.com/ssrbackup/shadowsocksr
cd shadowsocksr
cp config.json /etc/shadowsocks.json
sudo ln -s /etc/shadowsocks.json shadowsocks.json
echo "python $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json" > my_run.sh
sudo chmod a+x my_run.sh
echo "su - $USER -c \"python $HOME/Softwares/shadowsocksr/shadowsocks/local.py -c /etc/shadowsocks.json\"" > rc.sh

# vim setting
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
mkdir $HOME/.vim/colors # color schemes

# Todo: sublime setting
# Todo: typora setting


# # install gnome desktop
# echo "install gnome shell and tweak tool"
# sudo apt-get install gnome-session -y
# sudo apt-get install gnome-tweak-tool -y
# sudo apt-get install gnome-shell-extensions

# # install gnome arc theme
# echo "install gnome arc theme"
# sudo add-apt-repository ppa:noobslab/themes -y
# sudo apt-get update -y
# sudo apt-get install arc-theme -y

# # install gnome flat remix icon
# echo "install gnome flat remix icon"
# sudo add-apt-repository ppa:noobslab/icons -y
# sudo apt-get update -y
# sudo apt-get install flat-remix-icons -y

# # install dash to dock
# echo "install dash to dock plug in"
# cd ~/Downloads
# git clone https://github.com/micheleg/dash-to-dock.git
# cd dash-to-dock
# make 
# make install

# # install nodejs and npm
# echo "configure nodejs and npm environment"
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install -y nodejs
# sudo apt-get install -y build-essential

# install linux weixin
#git clone https://github.com/geeeeeeeeek/electronic-wechat.git
# Go into the repository
#cd electronic-wechat
# Install dependencies and run the app
#npm install && npm start
#npm run build:linux


echo ""
echo "#######################################################################"
echo "#                          FINISH!!!!!!!!!                            #"
echo "#######################################################################"
echo ""

sudo sync;sync;sync;reboot

