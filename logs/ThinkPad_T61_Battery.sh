#!/bin/sh
# thinkpad_t61_battery.sh: list battery status

# Author: Rony Yeung
# License: Public Domanin

F=/sys/devices/platform/smapi

[ -d ${F} ] || {
	printf "Module smapi not loaded."
	exit 1
}

F=${F}/BAT0/
ls ${F} | while read S; do
	printf "%-28s" ${S}
	cat ${F}/${S}
done
