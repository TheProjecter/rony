#!/bin/sh

#  this shell script update git repo, every file according to "git stat"
#  (1) oldest file first
#  (2) not yet work on files under subdirs
#
#  whem done, update your RELEASE.txt, and commit for a RELEASE point


hg status -d | while read f; do
    hd addremove "${f}"



ls -rt `hg status -n` | while read f; do
    hg addremove "${f}"
    TIMESTAMP=$(stat -c %y "${f}" | cut -b -19 )
    hg commit --date "${TIMESTAMP}" -m "${f} add/update"
done
