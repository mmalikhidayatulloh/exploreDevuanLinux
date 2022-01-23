# Edit apt source list
```
deb http://deb.devuan.org/merged chimaera          main
deb http://deb.devuan.org/merged chimaera-updates  main
deb http://deb.devuan.org/merged chimaera-security main
```
# update
```
$ sudo apt update && sudo apt upgrade
```
# cek init
```
readlink /sbin/init
```
If it is pointing to systemd or upstart, I get my answer. If it is not a symbolic link I would query which package the file belongs to: on a debian/ubuntu I would do
```
dpkg -S /sbin/init
```
