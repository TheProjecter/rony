#!/bin/sh

# 16m28s for 269 packages 
# 0m for re-run 


#NEWROOT=/tmp/newroot
NEWROOT=/mnt/cdrom

PACKAGES="sys-devel/gcc gentoolkit mc p7zip htop tmux vim sys-apps/eject virtual/eject perl sudo elinks patch less"
PACKAGES="${PACKAGES} cracklib shadow openssh psmisc iputils sysfsutils"
PACKAGES="${PACKAGES} tar procps net-tools virtual/pager less diffutils"
PACKAGES="${PACKAGES} which gzip busybox kbd grub openssl libtool"
PACKAGES="${PACKAGES} hdparm hddtemp pciutils usbutils sysstat rar zip testdisk"
PACKAGES="${PACKAGES} wget curl axel debootstrap dvd+rw-tools qemu-kvm"
PACKAGES="${PACKAGES} conky localepurge pm-utils"
PACKAGES="${PACKAGES} squashfs-tools mdadm cryptsetup lvm2"
# Daemons
PACKAGES="${PACKAGES} acpid cups syslog-ng logrotate vixie-cron"
# Wireless
PACKAGES="${PACKAGES} wireless-tools wpa_supplicant dhcpcd"
PACKAGES="${PACKAGES} wicd iwl4965-ucode"
PACKAGES="${PACKAGES} whois bind-tools nmap"
# Rootkit
PACKAGES="${PACKAGES} chkrootkit rkhunter openssh-blacklist"
# Gentoo
# PACKAGES="${PACKAGES} eix gentoolkit layman portage-utils ccache"
# Internet
PACKAGES="${PACKAGES} adzapper pdnsd polipo tor privoxy nginx"
# Console IM
PACKAGES="${PACKAGES} bitlbee weechat"
# Audio / Video
PACKAGES="${PACKAGES} abcde mplayer"
# Tools
PACKAGES="${PACKAGES} git mercurial subversion cvs"
PACKAGES="${PACKAGES} gifsicle jpeg advancecomp"
# Python
PACKAGES="${PACKAGES} python ipython lxml"
PACKAGES="${PACKAGES} ipython googlecl"
# Xorg
PACKAGES="${PACKAGES} xorg-server mesa libdrm xinput xrandr xcompmgr pango freetype lcms"
PACKAGES="${PACKAGES} xf86-video-intel xf86-video-vesa"
PACKAGES="${PACKAGES} xf86-input-evdev"
# Nouveau
PACKAGES="${PACKAGES} nouveau-drm xf86-video-nouveau"
# Input methods
PACKAGES="${PACKAGES} scim scim-tables scim-pinyin"
# GUI apps
PACKAGES="${PACKAGES} awesome"
PACKAGES="${PACKAGES} xautolock xlockmore"
PACKAGES="${PACKAGES} rxvt-unicode feh scrot"
PACKAGES="${PACKAGES} gnumeric abiword dia"
PACKAGES="${PACKAGES} pidgin pidgin-festival pidgin-libnotify farsight2"
PACKAGES="${PACKAGES} geeqie gimp epdfview zim"
PACKAGES="${PACKAGES} firefox adobe-flash"



PKGDIR=/gentoo/bin-core2-amd64 \
FEATURES="nodoc noman noinfo" \
emerge --root=${NEWROOT} --usepkgonly -uDN ${PACKAGES}






#time mksquashfs tmp/target_root aaaa.sqsh -no-recovery 
#Parallel mksquashfs: Using 2 processors
#Creating 4.0 filesystem on aaaa.sqsh, block size 131072.
#[================================================================-] 56951/56951 100%
#Exportable Squashfs 4.0 filesystem, data block size 131072
#	compressed data, compressed metadata, compressed fragments
#	duplicates are removed
#Filesystem size 360230.49 Kbytes (351.79 Mbytes)
#	31.86% of uncompressed filesystem size (1130695.76 Kbytes)
#Inode table size 537827 bytes (525.22 Kbytes)
#	28.44% of uncompressed inode table size (1891232 bytes)
#Directory table size 513681 bytes (501.64 Kbytes)
#	42.92% of uncompressed directory table size (1196703 bytes)
#Number of duplicate files found 8898
#Number of inodes 57334
#Number of files 51904
#Number of fragments 3440
#Number of symbolic links  2258
#Number of device nodes 0
#Number of fifo nodes 0
#Number of socket nodes 0
#Number of directories 3172
#Number of ids (unique uids + gids) 20
#Number of uids 9
#	root (0)
#	privoxy (103)
#	pdnsd (101)
#	nginx (107)
#	tor (104)
#	polipo (102)
#	bitlbee (106)
#	ntp (123)
#	lp (4)
#Number of gids 17
#	root (0)
#	lp (7)
#	privoxy (101)
#	nginx (995)
#	ssmtp (105)
#	crontab (104)
#	tty (5)
#	messagebus (998)
#	wheel (10)
#	portage (250)
#	polipo (102)
#	lpadmin (106)
#	bitlbee (997)
#	ntp (123)
##	tor (999)
#	cron (16)
#	mail (12)
#
#real	3m29.728s
#user	5m46.054s
#sys	0m3.528s

