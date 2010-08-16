#!/bin/sh

# Activates correspondent net.${iface} service
# Used parameters and environment variables:
# $1 - interface name (e.g. ppp0)

if [ -x /etc/init.d/net.$1 ]; then
	if ! /etc/init.d/net.$1 --quiet status ; then
		export IN_BACKGROUND="true"
		/etc/init.d/net.$1 --quiet start
	fi
fi
