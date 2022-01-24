# Install
```
$ sudo apt-get install nitrogen picom git
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
