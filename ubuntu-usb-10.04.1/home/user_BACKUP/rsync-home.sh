#!/bin/sh
#
# Script to backup /home/user to /home/BACKUP/user
# and skipping the excludes, e.g. browser caches,
# adobe flash caches, thumbnails, pulse and cookies,  etc.
#

TARGET=/home/${USER}_BACKUP

[ -d ${TARGET} ] || {
    printf "Aborted. ${TARGET} not found.\n"
    exit 1
}

# use rsync -av for verbose
rsync -av ${HOME}/ ${TARGET} \
  --exclude=.adobe/ \
  --exclude=.cache/ \
  --exclude=.config/chromium/Default/Archived\ History \
  --exclude=.config/chromium/Default/Archived\ History-journal \
  --exclude=.config/chromium/Default/Bookmarks.bak \
  --exclude=.config/chromium/Default/Cookies \
  --exclude=.config/chromium/Default/Dictionaries \
  --exclude=.config/chromium/Default/History* \
  --exclude=.config/chromium/Default/Thumbnails \
  --exclude=.config/chromium/Default/Thumbnails-journal \
  --exclude=.config/chromium/Default/Visited\ Links \
  --exclude=.config/chromium/Save\ Browsing\ Bloom* \
  --exclude=.config/chromium/Singleton* \
  --exclude=.config/chromium/Local\ State \
  --exclude=.dbus/ \
  --exclude=.fontconfig/ \
  --exclude=.gconf/apps/nm-applet \
  --exclude=.gconf/system/networking \
  --exclude=.gconfd/ \
  --exclude=.gnome2/gnome-web-photo/ \
  --exclude=.gstreamer-0.10/ \
  --exclude=.liferea_1.6/cache \
  --exclude=.local/share/Trash/ \
  --exclude=.local/share/gvfs-metadata/ \
  --exclude=.macromedia/ \
  --exclude=.mc/Tree --exclude=.mc/filepos --exclude=.mc/history \
  --exclude=.mission-control/ \
  --exclude=.mozilla/firefox/Crash\ Reports/ \
  --exclude=.mozilla/firefox/*/.parentlock \
  --exclude=.mozilla/firefox/*/Cache \
  --exclude=.mozilla/firefox/*/OfflineCache \
  --exclude=.mozilla/firefox/*/adblockplus/patterns-backup2.ini \
  --exclude=.mozilla/firefox/*/adblockplus/patterns-backup3.ini \
  --exclude=.mozilla/firefox/*/adblockplus/patterns-backup4.ini \
  --exclude=.mozilla/firefox/*/adblockplus/patterns-backup5.ini \
  --exclude=.mozilla/firefox/*/cookies.* \
  --exclude=.mozilla/firefox/*/downloads.sqlite \
  --exclude=.mozilla/firefox/*/formhistory.sqlite \
  --exclude=.mozilla/firefox/*/places.* \
  --exclude=.mozilla/firefox/*/sessionstore.bak \
  --exclude=.openoffice.org/3/user/registry/cache \
  --exclude=.pulse \
  --exclude=.ssh \
  --exclude=.thumbnails \
  --exclude=.update-notifier \
  --exclude=.vimperator/info/default/history-* \
  --exclude=.bash_history \
  --exclude=.dmrc \
  --exclude=.esd_auth \
  --exclude=.gksu.lock \
  --exclude=.htoprc \
  --exclude=.ICEauthority \
  --exclude=.lesshst \
  --exclude=.pulse-cookie \
  --exclude=.recently-used.xbel \
  --exclude=.usbcreator.log \
  --exclude=.viminfo \
  --exclude=.xsession-errors*


#  --exclude=.gvfs \
#  --exclude=.local/share/gvfs-metadata \
