#!/bin/sh

umount proc/
umount tmp/
umount dev/pts/
umount dev/
umount sys/

mount | grep --color `pwd`
