### Remove committed sensitive information ###
 Change the information. Once the commit has been pushed you should consider the data to be compromised. Period.
http://help.github.com/removing-sensitive-data/
```
$ cd /tmp/1234
$ git clone git@github.com:user/project.git
$ cd project.git
$ git filter-branch --index-filter 'git rm --cached --ignore-unmatch SecretFile' HEAD
```
```
$ echo SecretFile >> .gitignore
$ git add .gitignore
$ git commit -m "git upgrade fixed"
$ git push origin master --force
```
Cleanup and reclaim space
```
$ rm -rf .git/refs/original
$ git reflog expire --expire=now --all
$ git gc --prune=now
$ git gc --aggressive --prune=now
```
consider `git add --interactive `and `git diff --cached` safer