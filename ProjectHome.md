### Added Buffalo Linkstation Pro Debian Wheezy repository ###
https://code.google.com/p/rony/source/list?repo=linkstationpro

### Always Under construction ###

Up coming, re-align the entire thing.
拆 repo



I prefer git over hg, but hosting quality always matters. Sigh?


To list more [Gentoo overlays](http://www.gentoo.org/proj/en/overlays/userguide.xml) hosted on [Google Code](http://code.google.com), use
```
$ layman -L | grep -i googlec
```

repo serving my own:

  * [gentoo-overlay.rony.googlecode.com](http://code.google.com/p/rony/source/browse?repo=gentoo-overlay)
> > checkout with
`$ hg clone https://gentoo-overlay.rony.googlecode.com/hg/ rony-gentoo-overlay /gentoo/local`

  * scripts.rony.googlecode.com (but still sycning the first one =.=")
  * [tiddlywiki.rony.googlecode.com](https://code.google.com/p/rony/source/browse/?repo=tiddlywiki) - remix my own using [Tiddlywiki](http://www.tiddlywiki.com/)


else under very lazy progress:

  * Intel atom cpu gentoo configuration
  * IBM ThinkPad T61 gentoo configuration
  * Linkstation ARM9 gentoo configuration
  * Debian on ThinkPad T61
  * Arch Linux on ThinkPad T61

### Run a Linux OS with light applications ###
  * login
  * tmux, mc, vim
  * bitlee + weechat
  * startx, if need more than fbterm

> ### GUI ###
  * dwm (display being so cheap is the reason to go tiling)
  * xautolock
  * scim (returned from a year with ibus)
  * urxvt, (was using xterm)
  * pidgin for msn, festival-plugin
  * Firefox, was chromium that ate me 3GB RAM easily.

#### Base system ####
  * syslog-ng, vixie-cron
  * smartd, hddtemp
  * drbd, gfs2
  * rsync, lsyncd
  * nginx, vsftpd
  * pdnsd, polipo, privoxy, tor
  * git, hg
  * distccd
  * _not listed_ :)
Very light, running under 4GB RAM ;)