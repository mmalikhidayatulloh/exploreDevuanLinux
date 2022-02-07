# Downloads patch
downloads from https://dwm.suckless.org/patches/
# use tarball
## Install patch
```
patch -p1 < dwm-fullgaps-6.2.diff
```
## Fix error
```
vim dwm.c.rej
:vsplit dwm.c
```
replace error code (-) with right code (+)
## Apply config
```
sudo cp config.def.h config.h
sudo make clean install
```
restart
## remove patch
```
patch -R < dwm-fullgaps-6.2.diff
```

# use git
## install
```
git apply -3 st-scrollback-20210507-4536f46.diff
```
## fix error
```
delete <<<<<<<< ========= <<<<<<<<
```
## apply patch
```
sudo cp config.def.h config.h
make && sudo make clean install
```
## restart
## commit
```
git add .
git commit -m "commit message"
```
