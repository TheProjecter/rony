#!/bin/sh

#  this shell script update git repo, every file according to "git stat"
#  (1) oldest file first
#  (2) not yet work on files under subdirs
#
#  whem done, update your RELEASE.txt, and commit for a RELEASE point


ls -rt `git status --porcelain | cut -b 4- ` | while read f; do
    git add "${f}"
    TIMESTAMP=$(stat -c %y "${f}" | cut -b -19 )
    git commit --date "${TIMESTAMP}" -m "${f} add/update"
done
