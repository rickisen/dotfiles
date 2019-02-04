sysFile=/sys/devices/platform/sony-laptop/kbd_backlight

if [ $(cat $sysFile) == 0 ] ; then
    echo "1" > $sysFile
    echo "backlight off, toggeling it on"
elif [ $(cat $sysFile) == 1 ] ; then
    echo "0" > $sysFile
    echo "backligh on, toggeling it off"
elif [ $(cat $sysFile) == "-1" ] ; then
    echo "0" > $sysFile
    echo "backligh on, toggeling it off"
else 
    echo "kbd_backlight did not return either 0, -1 or 1"
fi
