# edit /etc/apt/source.list
```
deb-src http://deb.devuan.org/merged chimaera main  
deb-src http://deb.devuan.org/merged chimaera-updates main
deb-src http://deb.devuan.org/merged chimaera-security main
```
# Uninstall xorg and xfce4 slim
```
sudo apt-get purge xorg xfce4 xfce4-goodies slim
sudo update-rc.d slim disable
```
# Install requirement
```
$ sudo apt-get install nitrogen picom git suckless-tools libxinerama-dev libxft-dev libx11-dev
```
# Clone dwm
```
cd .config/suckless/
git clone https://git.suckless.org/dwm
cd dwm
make && sudo make clean install
```
edit become `Mod4` and add `,"10"` on bar config
```
cp config.deff.h config.h
sudo make clean install
```
# Clone st
```
cd .config/suckless/
git clone https://git.suckless.org/st
cd st
sudo make clean install
```
# Edit .xinitrc file
```
$ cp /etc/X11/xinit/xinitrc .xinitrc
$ vim .xinitrc
```
```
picom -f &
nitrogen --restore &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
exec dwm
```
# Enable tap to click
```
$ xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
```
# Install xorg
```
sudo apt-get install xorg
```
# Setting picom
comment (#) on
```
vrsync = true
```
reboot
