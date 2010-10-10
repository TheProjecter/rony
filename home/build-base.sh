#!/bin/bash

PACKAGES="\
    mc screen tmux distcc ccache p7zip rar unrar bc \
    pdnsd privoxy polipo \
    nginx \
    imagemagick \
    squashfs-tools compcache-tools \
"

# console extra
PACKAGES="${PACKAGES} \
    mplayer dvdauthor dvd+rw-tools \
"


# GUI
PACKAGES="${PACKAGES} \
   geeqie gimp pidgin galculator \
"


emerge $1 ${PACKAGES}

