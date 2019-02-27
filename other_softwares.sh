# terminal
sudo apt-get install -y nmap # Network exploration tool and security / port scanner

# albert
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
sudo apt-get install -y albert

# f.lux
# or redshift-gtk, setting in ~/.config/redshift.conf
#sudo add-apt-repository ppa:nathan-renniewaldock/flux -y
#sudo apt-get update
#sudo apt-get install -y fluxgui

# # skype
# skypeLink="https://repo.skype.com/latest/skypeforlinux-64.deb"
# skypeName="skype.deb"
# sudo wget -O ${skypeName} -c ${skypeLink}
# sudo dpkg -i ${skypeName}

# vncviewer
vncLink="https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.18.625-Linux-x64.deb"
vncName="vnc.deb"
wget -O ${vncName} -c ${vncLink}
sudo dpkg -i ${vncLink}

# sticky notes
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
# go-for-it to-do lists
sudo add-apt-repository ppa:mank319/go-for-it -y
sudo apt-get update
sudo apt-get install -y indicator-stickynotes
sudo apt-get install -y go-for-it

# gpick
sudo apt-get install -y gpick

# send anywhere
sendLink="https://update.send-anywhere.com/linux_downloads/sendanywhere_latest_amd64.deb"
sendName="sendanywhere.deb"
wget -O ${sendName} -c ${sendLink}
sudo dpkg -i ${sendName}
sudo apt-get install -yf

# wonderwall
sudo snap install wonderwall

# calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# mannual install
# adb
# anki
# simplenote
# gnugo
# cgoban
# quarry
# flameshot
# mendeley
# b1 free archiever
# nut store
# youdao dict
# texlive
# octave
# nodejs
# proxychains

# google earth
# docker
# ctags
# vnc4server, ubuntu-desktop, gnome-panel, gnome-settings-daemon, metacity, nautilus, gnome-terminal
