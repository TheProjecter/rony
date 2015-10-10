<a href='Hidden comment: 
http://ktown.kde.org/~zrusin/git/git-cheat-sheet.svg
'></a>
```
~/.gitconfig
(project)/.gitignore
```
# Start #
> ## Create ##
```
$ cd project && git init && git commit -a -m "Initial commit"
```
> ## Clone ##
```
$ git clone [--bare] /path/to/source /path/to/target
$ git clone git://github.com/username/project
$ git clone git@github.com:username/project
```

# Update #
```
$ git pull     # get lastest changes from origin, and merge
$ git fetch    # get lastest changes from origin, no merge

```

# Check and cleanup #
```
$ git fsck
$ git gc --prune
```

# Show #
```
$ git status                # files changed
$ git log                   # commit history
$ git log -p <file> <dir>   # commit history
$ git show <id>             # show commit <id>
$ git show <id>:<file>      # show <file> of commit <id>
$ git diff                  # changes to tracked files
$ git diff <id1> <id2>      # changes between <id1> <id2>
$ git blame <file>          # who changd what and when in <file>
```
# Branch #
```
$ git branch                # all local branches
$ git branch <x>            # create branch <x> based on HEAD
$ git checkout -b <y> <x>   # create branch <y> from <x>, and swith to <y>
$ git checkout <x>          # switch to <x>
$ git checkout <x> &&       # merge <y> to <x>
     git merge <y>
$ git branch -d <x>         # delete branch <x>
```

# Publish #
```
$ git commit -a -m "Describe changes"  # commit changes
$ git format-patch origin              # prepare patch
$ git push                             # update origin
$ git tag V1.0                         # mark a version
```