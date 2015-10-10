### lwp-mirror (libwww-perl) ###
`$ lwp-mirror [-t seconds] <url> <local file>`

`-t 10m` is 10 minutes, and `-t 2h` is 2 hours

### wget -m (mirror) ###
`$ wget -E -m <url>`

### wget -N (newer) ###
`$ wget -N <url>`

### curl -z (newer) ###
`$ curl -K -sS -z<local file> <url>`

Best to use with `gparallel` :)

`$ qlist libwww-perl | grep bin\/ | sort`
```
/usr/bin/GET
/usr/bin/HEAD
/usr/bin/lwp-download
/usr/bin/lwp-dump
/usr/bin/lwp-mirror
/usr/bin/lwp-request
/usr/bin/lwp-rget
/usr/bin/POST
```