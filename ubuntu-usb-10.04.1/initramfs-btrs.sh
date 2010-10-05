#!/bin/sh
# http://ubuntuforums.org/showthread.php?t=1389279

F1=/usr/share/initramfs-tools/hooks/btrfs
[ -f ${F1} ] && {
	printf "${F1} already exist, bye.\n"
	exit 1
}
F2=/usr/share/initramfs-tools/modules.d/btrfs
[ -f ${F2} ] && {
	printf "${F2} already exist, bye.\n"
	exit 1
}
F3=/usr/share/initramfs-tools/scripts/local-premount/btrfs
[ -f ${F3} ] && {
	printf "${F3} already exist, bye.\n"
	exit 1
}



printf "Create ${F1}\n"
cat > ${F1} <<EOF
#!/bin/sh -e
# initramfs hook for btrfs

if [ "\$1" = "prereqs" ]; then
    exit 0
fi

. /usr/share/initramfs-tools/hook-functions

if [ -x "\`which btrfsctl\`" ]; then
    copy_exec "\`which btrfsctl\`" /sbin
fi
EOF


printf "Create ${F2}\n"
cat > ${F2} <<EOF
# initramfs modules for btrfs
libcrc32c
crc32c
zlib_deflate
btrfs
EOF


printf "Create ${F3}\n"
cat > ${F3} <<EOF
#!/bin/sh -e
# initramfs script for btrfs

if [ "\$1" = "prereqs" ]; then
    exit 0
fi

modprobe btrfs

if [ -x /sbin/btrfsctl ]; then
    /sbin/btrfsctl -a 2>/dev/null
fi
EOF

chmod +x ${F1}
chmod +x ${F3}

printf "Run:\n"
printf "$ update-initramfs -u -k all\n"
printf "$ update-grub\n\n"
