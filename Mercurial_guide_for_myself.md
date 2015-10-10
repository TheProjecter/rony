## Starting a repo ##
Much like `git`
```
$ cd <repo>
$ hg init
$ hg add [-X exclude_pattern]
```

## Config files ##
`<repo>/.hg/hgrc`
```
[ui]
username = __nick__ <email>
verbose = true

[paths]
default-push = https://[username:password@]<repo>.<project>.googlecode.com
```

`~/.hgrc`
```
[ui]
username = nick <email>
verbose = True

[auth]
project.prefix = https://<repo>.<project>.googlecode.com/hg/
project.username = <google_account>
# project.password = 
```

## Submission ##
```
$ hg addremove
[$ hg status]
$ hg commit -m "Initial commit."
$ hg push
```

## Rename ##
```
$ mv dir1 dir2
$ hd addremove --similarity 100
```