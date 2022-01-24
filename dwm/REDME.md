# Install
```
$ sudo apt-get install nitrogen picom git dwm suckless-tools libxinerama-dev libxft-dev libx11-dev
```
# edit /etc/apt/source.list
```
deb-src http://deb.devuan.org/merged chimaera main  
deb-src http://deb.devuan.org/merged chimaera-updates main
```
# Get source
```
$ mkdir .config/suckless
$ cd .config/suckless/ && apt-get source dwm
```
# Edit .xinitrc file
```
$ cp /etc/X11/xinit/xinitrc .xinitrc
$ vim .xinitrc
```
```
exec dwm
picom -f &
nitrogen --restore &
```
# Enable tap to click
```
$ xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
```
# Install st
```
cd .config/suckless/
git clone https://git.suckless.org/st
cd st
sudo make clean install
```
```
cd .config/suckless/dwm-6.1/
vim config.deff.h
```
```
static const char *termcmd[]  = { "st", NULL };
```
```
cp config.deff.h config.h
sudo make clean install
```
