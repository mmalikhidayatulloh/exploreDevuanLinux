# Downloads patch
downloads from https://dwm.suckless.org/patches/
# Install patch
```
patch -p1 < dwm-fullgaps-6.2.diff
```
# Fix error
```
vim dwm.c.rej
:vsplit dwm.c
```
replace error code (-) with right code (+)
# Apply config
```
sudo cp config.def.h config.h
sudo make clean install
```
restart dwm
# remove
```
patch -R < dwm-fullgaps-6.2.diff
```
