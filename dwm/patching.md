```
cd .config/suckless/dwm
git branch
```
# configure git
```
git config user.email "youraccount@gmail.com"
git config user.name "youraccount"
```
```
make clean && rm -f config.h && git reset --hard origin/master
git branch myconfig
git checkout myconfig
vim config.def.h
git add config.def.h
git commit -m "become Mod4"
git checkout master
git merge myconfig -m "update config"
make && sudo make clean install
```
