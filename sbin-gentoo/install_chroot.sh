#!/bin/sh

mount -t proc     none proc/
mount -t devtmpfs none dev/
mount -t devpts   none dev/pts/
mount -t sysfs    none sys/

mount -t tmpfs    none tmp/
mkdir tmp/.emerge

chroot . /bin/bash

