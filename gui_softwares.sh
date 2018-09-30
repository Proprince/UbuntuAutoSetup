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

# unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

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
sudo mkdir ${tempDir}
cd ${tempDir}

softwareDir="$HOME/Softwares"
mkdir ${softwareDir}

##### some links need to be updated !!!!

googleChromeLink="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sougouLink="http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=6nqfTsVkKHelL8DAMFtcXA&e=1536031562&fn=sogoupinyin_2.2.0.0108_amd64.deb"
wpsLink="http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb"
vscodeLink="https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code_1.26.1-1534444688_amd64.deb"
virtualBoxLink="https://download.virtualbox.org/virtualbox/5.2.18/virtualbox-5.2_5.2.18-124319~Ubuntu~xenial_amd64.deb"
netMusicLink="http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb"
foxitLink="http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz"

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

# theme, setting in unity-tweak-tool
fbLink="https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb"
fbName="flatabulous.deb"
sudo wget -O ${fbName} -c ${fbLink}
sudo dpkg -i fbName

# sublime-chinese
cd ${softwareDir}
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
cd sublime-text-imfix
./sublime-imfix
