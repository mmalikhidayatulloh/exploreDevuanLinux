# Install
```
$ sudo apt-get install nitrogen picom git dwm suckless-tools
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
