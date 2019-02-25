# install some tools:
echo "install Chinese"
sudo apt-get install language-pack-zh-hans -y

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

sudo apt-get install -y python-pip
sudo apt-get install -y python3-pip

# generate ssh
mkdir -pm 700 /home/$USER/.ssh
ssh-keygen -f /home/$USER/.ssh/id_rsa -N ''

# config git
git config --global user.name xxx
git config --global user.email xxx

# oh-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sudo sh
sudo apt-get install -y autojump

sudo pip3 install thefuck

# settings for vim, zsh, tmux
ln ubuntu_setup/settings/vimrc -f $HOME/.vimrc
ln ubuntu_setup/settings/zshrc -f $HOME/.zshrc
ln ubuntu_setup/settings/tmux.conf -f $HOME/.tmux.conf

sudo chsh -s /bin/zsh

# vim setting
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
mkdir $HOME/.vim/colors # color schemes
ln ubuntu_setup/vim/jellybeans.vim $HOME/.vim/colors
vim +PluginInstall +qall

# if RAM is less than 1.5GB, can't use ycm
# need to delete settings in vimrc
$HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer
ln -f ubuntu_setup/vim/ycm_extra_conf.py $HOME/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
