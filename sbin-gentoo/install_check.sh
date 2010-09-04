#!/bin/sh

#TARGET=tmp/newroot
TARGET=/mnt/cdrom

sort var/lib/portage/world > /tmp/gentoo_pkgroot.txt
sort ${TARGET}/var/lib/portage/world > /tmp/gentoo_newroot.txt

diff /tmp/gentoo_newroot.txt /tmp/gentoo_pkgroot.txt | less
