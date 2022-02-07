slstatus &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
nitrogen --restore &
picom -f &
 exec dwm
# exec dbus-launch --exit-with-session startplasma-x11
