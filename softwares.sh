# YouCompleteMe

# kolourpaint4
sudo apt-get install -y kolourpaint4

# f.lux
sudo add-apt-repository ppa:nathan-renniewaldock/flux -y
sudo apt-get update
sudo apt-get install -y fluxgui

# skype
skypeLink="https://repo.skype.com/latest/skypeforlinux-64.deb"
skypeName="skype.deb"
sudo wget -O ${skypeName} -c ${skypeLink}
sudo dpkg -i ${skypeName}

# vncviewer
vncLink="https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.18.625-Linux-x64.deb"
vncName="vnc.deb"
sudo wget -O ${vncName} -c ${vncLink}
sudo dpkg -i ${vncLink}

# sticky notes
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
sudo apt-get update
sudo apt-get install -y indicator-stickynotes

# go-for-it to-do lists
sudo add-apt-repository ppa:mank319/go-for-it -y
sudo apt-get update
sudo apt-get install -y go-for-it

# simplenote
# download .deb from https://www.simplenote.com

# send anywhere
sendLink="https://update.send-anywhere.com/linux_downloads/sendanywhere_latest_amd64.deb"
sendName="sendanywhere.deb"
wget -O ${sendName} -c ${sendLink}
sudo dpkg -i ${sendName}
sudo apt-get install -yf

