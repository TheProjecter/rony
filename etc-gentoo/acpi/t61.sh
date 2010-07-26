#!/bin/sh
# /etc/acpi/default.sh
# Default acpi script that takes an entry for all actions

set $*

group=${1%%/*}
action=${1#*/}
device=$2
id=$3
value=$4


echo $group >> /tmp/2/aa
echo $action >> /tmp/2/aa
echo $device >> /tmp/2/aa
echo $id >> /tmp/2/aa
echo $value /tmp/2/aa

log_unhandled() {
	logger "ACPI event unhandled: $*"
}

case "$group" in
	button)
		case "$action" in
			mute)
				/usr/bin/amixer -q set Master mute
                echo mmmmmmm >> /tmp/2/aa
				;;
			volumedown)
				/usr/bin/amixer -q set Master unmute
				/usr/bin/amixer -q set Master 10-
                echo ddddddddd >> /tmp/2/aa
				;;
			volumeup)
				/usr/bin/amixer -q set Master unmute
				/usr/bin/amixer -q set Master 10+
				;;

			# if your laptop doesnt turn on/off the display via hardware
			# switch and instead just generates an acpi event, you can force
			# X to turn off the display via dpms.  note you will have to run
			# 'xhost +local:0' so root can access the X DISPLAY.
			#lid)
			#	xset dpms force off
			#	;;

			*)	log_unhandled $* ;;
		esac
		;;

	video)
		case "$value" in
			# Add code here to handle when the system is unplugged
			# (maybe change cpu scaling to powersave mode).  For
			# multicore systems, make sure you set powersave mode
			# for each core!
			#*0)
			#	cpufreq-set -g powersave
			#	;;

			# Add code here to handle when the system is plugged in
			# (maybe change cpu scaling to performance mode).  For
			# multicore systems, make sure you set performance mode
			# for each core!
			#*1)
			#	cpufreq-set -g performance
			#	;;

			*)	log_unhandled $* ;;
		esac
		;;

	*)	log_unhandled $* ;;
esac
