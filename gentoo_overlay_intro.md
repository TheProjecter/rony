I moved my Gentoo portage things to /gentoo for easier management amongst machines and cross developments.

I have something like following:
```
/gentoo-+-/binpkgs---+-/core2-amd64
        |            +-/others
        +-/distfiles
        +-/portage---+-/gentoo
                     +-/layman
                     +-/local
```

## Portage config files ##
`/etc/make.conf`
```
PORTDIR=/gentoo/portage/gentoo
PORTDIR_OVERLAY="${PORTDIR} /gentoo/portage/local"
source=/gentoo/portage/layman/make.conf
DISTDIR=/gentoo/distfiles
PKGDIR=/gentoo/binpkgs/core2-amd64
```
`/etc/layman/layman.cfg`
```
storage  : /gentoo/portage/layman
overlays : http://www.gentoo.org/proj/en/overlays/repositories.xml 
           http://rony.googlecode.com/files/rony-private-overlay.xml
```
`http://rony.googlecode.com/files/rony-private-overlay.xml`
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE repositories SYSTEM "/dtd/repositories.dtd">
<repositories xmlns="" version="1.0">
  <repo quality="experimental" status="unofficial">
    <name><![CDATA[rony]]></name>
    <description><![CDATA[Rony private overlay]]></description>
    <homepage>http://code.google.com/p/rony/</homepage>
    <owner>
      <email>rony.yeung@gmail.com</email>
    </owner>
    <source type="mercurial">https://gentoo-overlay.rony.googlecode.com/hg/</source>
    <feed>http://code.google.com/feeds/p/rony/hgchanges/basic?repo=gentoo-overlay</feed>
  </repo>
</repositories>
```

## Update portage overlay ##
```
$ layman -S
$ layman -a <overlay>
```

## Update portage ##
```
$ eix-sync
```
if sometimes eix-update fails, do a
```
$ eix-update
```