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
# remove swapfile
```
$ sudo swapoff /swapfile
$ sudo rm /swapfile
```
delete swapfile on `/etc/fstab`
# zram
```
$ sudo apt-get install zram-tools 
```
copy the following script to /etc/init.d/zram:
```
# Author: Antonio Galea <antonio.galea@gmail.com>
#
# Thanks to Przemysław Tomczyk for suggesting swapoff parallelization
# Distributed under the GPL version 3 or later, see terms at
# https://gnu.org/licenses/gpl-3.0.txt

### BEGIN INIT INFO
# Provides:          zram
# Required-Start:    $local_fs
# Required-Stop:     $local_fs
# Default-Start:     S
# Default-Stop:      0 1 6
# Short-Description: Use compressed RAM as in-memory swap
# Description:       Use compressed RAM as in-memory swap
### END INIT INFO

FRACTION=75
MEMORY=$(perl -ne '/^MemTotal:\s+(\d+)/ && print $1*1024' < /proc/meminfo)
CPUS=$(nproc)
SIZE=$((MEMORY * FRACTION / 100 / CPUS))

case "$1" in
    start)
        param=$(modinfo zram | grep num_devices | cut -f2 -d: | tr -d ' ')
        modprobe zram $param=$CPUS

        for n in $(seq $CPUS)
        do
            i=$((n - 1))
            echo $SIZE > /sys/block/zram$i/disksize
            mkswap /dev/zram$i
            swapon /dev/zram$i --priority 10
        done
        ;;
    stop)
        for n in $(seq $CPUS)
        do
            i=$((n - 1))
            swapoff /dev/zram$i && echo "zram: disabled disk $n of $CPUS" &
        done

        wait
        sleep .5
        modprobe --remove zram
        ;;
    *)
        echo "Usage: $(basename $0) (start | stop)"
        exit 1
        ;;
esac

# End of file
```
```
$ sudo chmod +x /etc/init.d/zram
```
```
$ sudo apt-get install insserv
$ sudo insserv zram
```
sumber https://wiki.debian.org/ZRam
```
reboot
```
# Install build essential
```
sudo apt install build-essential dkms linux-headers-$(uname -r)
```
# Install restricted extras
```
sudo apt install libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi
```
# Install msfont compatibility
```
sudo apt install fonts-crosextra-carlito fonts-crosextra-caladea
```
# Install tlp
```
sudo apt install tlp
sudo tlp start
```
# Setting chromium
https://docs.microsoft.com/en-us/microsoftteams/troubleshoot/teams-sign-in/sign-in-loop#resolution
