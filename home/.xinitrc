#!/bin/sh

WM=awesome
# WM=openbox

export LANG=en_US.UTF-8
LANG=en_US.UTF-8 scim -d
export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE="scim"
export QT_IM_MODULE="scim"

F="SynPS/2 Synaptics TouchPad"
xinput list | grep -q "${F}" && {
	xinput set-prop "${F}" "Device Enabled" 0
}

F="TPPS/2 IBM TrackPoint"
xinput list | grep -q "${F}" && {
	xinput set-prop "${F}" "Evdev Wheel Emulation" 1
	xinput set-prop "${F}" "Evdev Wheel Emulation Button" 2
	xinput set-prop "${F}" "Evdev Wheel Emulation Timeout" 200
	xinput set-prop "${F}" "Evdev Wheel Emulation Axes" 6 7 4 5
	# xinput set-prop "${F}" "Evdev Middle Button Emulation" 1
	# xinput set-prop "${F}" "Evdev Middle Button Timeout" 50
}

xrdb -m .Xresources
urxvtd -q -o -f
urxvtc -e tmux at &


# keyboard repeat delay and repeat rate
xset r rate 200 30

exec xset dpms 1800 2100 2400 &
exec xautolock -time 12 -locker "xlock -mode blank" &


#{{{ Window manager selection
case "$WM" in
	awesome)
		exec awesome
		;;
	openbox)
		docker &
		exec openbox-session
		;;
	*)
		;;
esac
#}}}
