# Introduction #

Gentoo mirrors
```
http://www.gentoo.org/main/en/mirrors2.xml
wget <site>/pub/Linux/Gentoo/releases/amd64/current-stage3/stage3-amd64-YYYYMMDD.tar.bz2
```
```
$ mkdir /tmp/gentoo
$ cd /tmp/gentoo
$ tar xvf stage3-amd64-YYYYMMDD.tar.bz2
```
```
$ mount -o bind /dev none dev/
$ mount -t proc none proc/
$ mount -t sysfs none sys/
$ mount -t tmpfs none tmp/ -o size=3200M
```
```
$ chroot . /bin/bash
$ env-update
$ . /etc/profile
```
edit `/etc/resolv.conf`
```
nameserver 8.8.8.8
nameserver 8.8.4.4
```
edit `/etc/make.conf`
```
HOST="x86_64-pc-linux-gnu"
ACCEPT_KEYWORDS="~amd64"
ACCEPT_LICENSE="*"

CFLAGS="-march=core2 -mtune=core2 -mcx16 -msahf"
CLFAGS="${CFLAGS} --param l1-cache-size=32 --param l1-cache-line-size=64"
CFLAGS="${CFLAGS} --param l2-cache-size=4096"
CFLAGS="${CFLAGS} -O2 -fomit-frame-pointer -pipe"
CFLAGS="${CFLAGS} -finline-functions"

CXXFLAGS="${CFLAGS}"

LDFLAGS="-Wl,-O1"         # remark it for GCC 4.5 and TK ... has no use
# LDFLAGS="${LDFLAGS} -D_FORTIFY_SOURCE=2"         # remark it for GCC 4.5 and TK ... has no use
# LDFLAGS="${LDFLAGS} -lpthread"                  # python threading requires this
# LDFLAGS="${LDFLAGS} -Wl,--as-needed"              # fail: grisbi, gcin0.4.4-r1, gcc-4.5, libwww, ladspa-sdk, v86d
# LDFLAGS="${LDFLAGS} -Wl,--hash-style=gnu"
#LDFLAGS="${LDFLAGS} -Wl,--enable-new-dtags -s"	  # -s is insane
LDFLAGS="${LDFLAGS} -Wl,--enable-new-dtags"
LDFLAGS="${LDFLAGS} -Wl,-znow"                          # fail: go-ld
# LDFLAGS="${LDFLAGS} -Wl,--warn-once"
# LDFLAGS="${LDFLAGS} -Wl,--sort-common"
# LDFLAGS="${LDFLAGS} -fopenmp"
# LDFLAGS="${LDFLAGS} -lgomp"
# LDFLAGS="${LDFLAGS} -Bdirect"
# LDFLAGS=""

AUTOCLEAN="yes"
CLEAN_DELAY=3


FEATURES="parallel-fetch"
# FEATURES="${FEATURES} distcc"
# FEATURES="${FEATURES} collision-protect"
# FEATURES="distcc"                             # distcc does not like this
# FEATURES="${FEATURES} userpriv"               # distcc does not like this
FEATURES="${FEATURES} fail-clean"
FEATURES="${FEATURES} buildpkg"
FEATURES="${FEATURES} sandbox usersandbox"
FEATURES="${FEATURES} metadata-transfer"

CCACHE_DIR=/tmp/.ccache
CCACHE_SIZE=400M
FEATURES="${FEATURES} ccache"

# courier-imap/authlib, xulrunner requires -j1
# MAKEOPTS="-j1"
MAKEOPTS="-j3"
# MAKEOPTS="-j8"

WANT_MP="true"

# GENTOO_MIRRORS="ftp://ftp.kaist.ac.kr/gentoo"
#VIDEO_CARDS="nvidia intel"
VIDEO_CARDS="nouveau vesa"
ALSA_CARDS="hda-intel"
INPUT_DEVICES="evdev joystick"
#ALSA_PCM_PLUGINS=""
#LINGUAS="en en_US zh zh_TW zh_CN"
INGUAS="en en_US"
# 
PORTDIR=/gentoo/portage
# PORTDIR_OVERLAY="${PORTDIR} /gentoo/local"
# PORTDIR_OVERLAY="${PORTDIR}"
# source "/gentoo/layman/make.conf"
DISTDIR=/gentoo/distfiles
PKGDIR=/gentoo/bin-core2-amd64

EMERGE_LOG_DIR="/gentoo/log"
PORT_LOGDIR="/gentoo/log"

QEMU_SOFTMMU_TARGETS="arm mipsel x86_64"
QEMU_USER_TARGETS="arm armeb mipsel x86_64"

PORTAGE_TMPDIR=/tmp/.emerge
PORTAGE_TMPFS=/dev/shm



USE="dvdr encode gallium gmp ipv6 lcms libnotify lzo rar \
ssse3 startup-notification unicode usb -nls -pam"
USE="${USE} -gnome -kde -qt -qt3 -qt4"
USE="${USE} -berkdb -gdbm"
USE="${USE} -hal -consolekit"
USE="${USE} -acl -xattr"
# X
USE="${USE} cairo dbus truetype xinerama xvmc -auto-hinter"
# Audio
USE="${USE} aac alsa audiofile faac faad flac mad mp3 -mp3rtp ogg sndfile vorbis"
USE="${USE} x264 xvid"
# Graphics formats
USE="${USE} gif jpeg png svg"

#GENTOO_MIRRORS="http://ftp.jaist.ac.jp/pub/Linux/Gentoo/"
#SYNC="rsync://gentoo.aditsu.net/gentoo-portage"
GENTOO_MIRRORS="http://gentoo.aditsu.net/"
SYNC="rsync://mirrors.xmu.edu.cn/gentoo-portage"
#GENTOO_MIRRORS="http://mirrors.xmu.edu.cn/gentoo"
```
update portage
```
$ emerge --sync
$ eselect profile set 1
```
if there are unread news
```
$ eselect news read all
$ eselect news purge all
```
```
$ emerge ccache eix
```