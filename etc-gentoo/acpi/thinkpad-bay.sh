#!/bin/sh
# 'hotswap' and 'beep' are part of the distribution, install them

case $1 in
open)
	hotswap unregister-ide && \
	beep -f 5000 -n -f 3000
	;;
close)
	hotswap rescan-ide && \
	beep -f 3000 -n -f 5000
	;;
esac
