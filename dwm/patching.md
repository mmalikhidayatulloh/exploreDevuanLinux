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
```
make clean && rm -f config.h && git reset --hard origin/master
git branch fullgaps
Download dwm-fullgaps on https://dwm.suckless.org/patches/fullgaps/ save to ~/Downloads
git checkout fullgaps
git apply ~/Downloads/dwm-fullgaps-20200508-7b77734.diff
```
```
patch < ~/Downloads/dwm-fullgaps-20200508-7b77734.diff
patching file config.def.h
Reversed (or previously applied) patch detected!  Assume -R? [n] y
Hunk #2 succeeded at 85 (offset 1 line).
patching file dwm.1
Reversed (or previously applied) patch detected!  Assume -R? [n] y
patching file dwm.c
Reversed (or previously applied) patch detected!  Assume -R? [n] y
Hunk #4 succeeded at 1501 (offset 3 lines).
Hunk #5 succeeded at 1687 (offset 3 lines)
```
```
git add dwm.c config.def.h
git commit -m fullgaps
git checkout master
git merge myconfig -m myconfig
git merge fullgaps -m fullgaps
make && sudo make clean install
```
