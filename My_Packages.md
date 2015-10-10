# Base #
```
$ INSTALL nginx pdsnd privoxy adzapper tor bitlbee weechat cups
$ INSTALL bind-tools nmap mtr curl axel dhcpcd netkit-telnetd ntp openssh-blacklist whois wicd rfkill
### Disk and filesystem
$ INSTALL hddtemp hdparm smartmontools testdisk ddrescue mdadm dosfstools squashfs-tools sshfs-fuse btrfs-tools eject
$ INSTALL logrotate syslog-ng sysstat
$ INSTALL git mercurial hg-git
### Font
$ INSTALL terminus-font
### Archivers
$ INSTALL p7zip xz-utils rar unrar
### Graphics tools
$ INSTALL advancecomp jpeg gifsicle sharutils jhead exiftags exiv2 optipng pngrewrite
### AV tools
$ INSTALL libogg abcde mpeg ffmpeg x264-encoder h264enc recordmydesktop youtube-dl
$ INSTALL dash mc fdupes realpath tmux conky
$ INSTALL vim pygments source-highlight sc asciidoc htmltidy xmlstarlet txt2tags pdf2html htmldoc ipython
$ INSTALL canto 
$ INSTALL cdrtools dvd+rw-tools 
$ INSTALL chkrootkit rkhunter
$ INSTALL lxml dbfpy googlecl mechanize simplejson
$ INSTALL ccache distcc
$ INSTALL acpid powertop pm-utils htop lsof parallel vixie-cron elinks httrack 
```

# GUI #
```
### Window Manager
$ INSTALL openbox awesome xterm rxvt-unicode xautolock xlockmore xclip xsel docker xcompsite
$ INSTALL xrandr xinput xrdb xset rgb xinit xauth xtrans xcomposite dmenu
### Fonts
$ INSTALL cfonts dejavu droid mkfontdir
### Chinese input
$ INSTALL scim scim-tables scim-pinyin
### Web browser
$ INSTALL www-client/chromium firefox adobe-flash
### IM Chat
$ INSTALL pidgin pidgin-festival pidgin-encryption pidgin-libnotify
### Code
$ INSTALL geany meld visual-regexp
### Graphics tool
$ INSTALL gimp inkscape mirage geeqie
### Others
$ INSTALL abiword dia gnumeric openoffice-bin epdfview scrot keepnote pcmanfm vdpauinfo zim
```

# ThinkPad #
```
$ INSTALL hdapsd iwl4965-ucode
### patch kernel with tp_smapi by hand
```

where `INSTALL` is

  * Gentoo Linux: `emerge`
  * Debian/Ubuntu: `apt-get install`
  * Archlinux: `pacman`

but package names may vary.