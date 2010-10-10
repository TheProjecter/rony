#!/bin/dash

# USE="-*" FEATURES="noman nodoc noinfo" emerge --root=/mnt/testing-noj/atom330-uclibc baselayout --nodeps -pv
# USE="-* unicode" ./atom330-uclibc-emerge.sh portage --nodeps

# FEATURES="noman nodoc noinfo" emerge --root=/mnt/testing-noj/atom330-uclibc "$@"

# new method, testing

FEATURES="noman nodoc noinfo" PORTAGE_BINHOST="http://tinderbox.dev.gentoo.org/uclibc/amd64/" emerge --root="/mnt/testing-noj/atom330-uclibc" -gK "$@"

