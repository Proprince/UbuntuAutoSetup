echo "install fcitx"
sudo apt-get install -y fcitx
# Chinese Fonts
sudo apt-get install -y  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy fonts-arphic-ukai fonts-arphic-uming

# setup fonts from windows
curDir=$(cd `dirname $0`; pwd)
cd /usr/share/fonts
sudo rm -rf xpfonts
sudo ln -sf ${curDir}/ubuntu_setup/fonts xpfonts
cd xpfonts
mkfontscale
mkfontdir
fc-cache
cd ${curDir}

echo "install gnuplot5"
sudo apt-get install gnuplot5 -y
echo "install kolour paint"
sudo apt-get install  kolourpaint4 -y

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# typora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE -y
sudo add-apt-repository 'deb https://typora.io/linux ./' -y

# ultra-flat-icons
sudo add-apt-repository ppa:noobslab/icons -y

# meld
sudo apt-get install -y meld

# gnome-tweak-tool
sudo apt-get install -y gnome-tweak-tool

# goldendict
sudo apt-get install -y goldendict

sudo apt-get update
sudo apt-get install -y sublime-text
sudo apt-get install --allow-unauthenticated -y typora
sudo apt-get install -y ultra-flat-icons


echo ""
echo "#######################################################################"
echo "#                        INSTALL SOFTWARE                             #"
echo "#######################################################################"
echo ""

echo ""
tempDir="$HOME/Downloads/setup_temp"
mkdir ${tempDir}
cd ${tempDir}

softwareDir="$HOME/Softwares"
mkdir ${softwareDir}

##### some links need to be updated !!!!

googleChromeLink="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sougouLink="http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=6nqfTsVkKHelL8DAMFtcXA&e=1536031562&fn=sogoupinyin_2.2.0.0108_amd64.deb"
wpsLink="http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb"
vscodeLink="https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code_1.26.1-1534444688_amd64.deb"
netMusicLink="http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb"
foxitLink="http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz"

# install software
cd ${tempDir}

chromeName="chrome.deb"
wget -O ${chromeName} -c ${googleChromeLink}
sudo dpkg -i ${chromeName}

sougouName="sougou.deb"
wget -O ${sougouName} -c ${sougouLink}
sudo dpkg -i ${sougouName}
sudo apt-get install -fy
## need to setup manually

wpsName="wps.deb"
wget -O ${wpsName} -c ${wpsLink}
sudo dpkg -i ${wpsName}

#vscodeName="vscode.deb"
#sudo wget -O ${vscodeName} -c ${vscodeLink}
#sudo dpkg -i ${vscodeName}

# virtualBoxLink="https://download.virtualbox.org/virtualbox/5.2.18/virtualbox-5.2_5.2.18-124319~Ubuntu~xenial_amd64.deb"
# virtualBoxName="virtualBox.deb"
# sudo wget -O ${virtualBoxName} -c ${virtualBoxLink}
# sudo dpkg -i ${virtualBoxName}
# sudo apt-get install -fy

netMusicName="netMusic.deb"
wget -O ${netMusicName} -c ${netMusicLink}
sudo dpkg -i ${netMusicName}

foxitName="foxit.tar.gz"
wget -O ${foxitName} -c ${foxitLink}
tar -xzvf foxit.tar.gz
# ./xxx.run # need to setup by gui

# sublime-chinese
cd ${softwareDir}
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
cd sublime-text-imfix
./sublime-imfix
