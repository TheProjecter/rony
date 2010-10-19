#!/bin/sh

F=/sys/devices/platform/smapi

[ -d ${F} ] || {
	printf "module smapi not loaded."
	exit 1
}

F=${F}/BAT0/
ls ${F} | while read S; do
	printf "%-28s" ${S}
	cat ${F}/${S}
done

