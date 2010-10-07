#!/bin/sh

mount --bind /dev dev/
mount -t proc none proc/
mount -t devpts none dev/pts
mount -t sysfs none sys/
mount -t tmpfs none tmp/
mkdir tmp/.emerge
mount -o subvol=gentoo_portage,compress,ssd_spread,thread_pool=2 UUID=68440e4d-567d-42e2-a431-fdddea1ffd28 gentoo
mount | grep --color `pwd`

printf "after chroot run: env-update && . /etc/profile\n"

chroot . /bin/bash
