## system setting

Appearance->Behavior: show desktop icon, menus in windows

power: suspend when inactive on battery power

Brightness->screen off: 30 mins

In `/etc/default/keyboard` set `XKBOPTIONS="ctrl:swapcaps"`

## Unity Tweak Tools

Theme, Icons

## Grub setting

```bash
sudo vim /etc/default/Grub
```

set `GRUB_TIMEOUT=2`

then

```bash
sudo update-grub
```

## Terminal

images in Proprince/ubuntu_setup/img

## Fcitx Config

Add Sogou, then setup sogou pinyin

## f.lux

If not working, see [issue](https://github.com/xflux-gui/fluxgui/issues/27). Try to use RedShift.

```bash
sudo apt-get remove fluxgui -y
sudo apt-get autoremove -y
sudo apt-get install -y redshift-gtk
```

Download `redshift.conf` into $HOME/.config/redshift, then manually modify the config.

## Chrome

Sign in

125% zoom out

Tampermonkey Script: baidu.com (not for Ubuntu)

## Golden Dict



## NetEase Music

Sign in

## Sublime Text

http://zrp15.top/2018/04/22/sublime-text-setup/

ctags, 

## Typora



## Vim

config, YCM

Color Scheme: Download jellybeans.vim from [Bytefluent](http://bytefluent.com/vivify/), then put it into `$HOME/.vim/colors`

## VSCode



## foxit reader

```bash
tar -xzvf foxit.tar.gz
./xxx.run
```

## shadowsocksR

1. Edit shadowsocks.json configuration
2. Copy the content of rc.sh into "Startup Applications"
3. Config SwitchyOmega
    + Proxy: server=127.0.0.1, port=1080
    + Auto Switch
        + Remove type alredy
        + Add rule list: https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
        + Rule list rules: proxy
        + Default: Direct
        + Rule List Format: AutoProxy

