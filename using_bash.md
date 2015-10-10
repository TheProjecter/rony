
```
$ bind -P
```

### Tab ###
| All available commands(common) | `Tab Tab` |
|:-------------------------------|:----------|
| All available commands starting with (string) | `(string) Tab Tab` |
| ls                             | `= Tab Tab` |
| Only Sub Dirs inside without Hidden one | `* Tab Tab` |
| Only Sub Dirs inside including Hidden one | `. Tab Tab` |
| All Present Users on system from "/etc/passwd" | `~ Tab Tab` |
| All Sys variables              | `$ Tab Tab` |
| Entries from "/etc/hosts"      | `@ Tab Tab` |
| Entire directory structure including Hidden one | `/ Tab Tab` |

### Process ###
```
foreground process to backgraound   ctrl-z
to foreground                       $ fg
```

### Path ###
```
change to previous directory                            $ cd -
Display the list of currently remembered directories    $ dirs
Save and then change the current directory              $ pushd [dir | +N | -N] [-n]
Save and then change the current directory              $ popd
```

## Command line editing ##
```
Ctrl + a - Jump to the start of the line
Ctrl + e - Jump to the end of the line
Ctrl + xx - Move between EOL and current cursor position

Ctrl + b - Move back a char
Ctrl + f - Move forward a char
Move backward                                          Alt-b or Esc-b
Move forward                                           Alt-f or Esc-f

Ctrl + d - Delete from under the cursor
Delete to EOL                                            Ctrl-k or Esc-d
Ctrl + u - Delete backward from cursor
Alt + d - Delete word
Alt + back-space - Delete backward from cursor
```
### History ###
```
Ctrl + r - Search the history backwards
Ctrl + R - Search the history backwards with multi occurrence
Alt + n - Search the history forwards non-incremental
Alt + p - Search the history backwards non-incremental
Alt + < - Move to the first line in the history
Alt + > - Move to the last line in the history
Alt + r - Recall command

```

```
Ctrl + c - Terminate the command
Ctrl + l - Clear the screen
Ctrl + x @ - Show possible hostname completions
Ctrl + z - Suspend/ Stop the command
```
```
Alt + ? - Show current completion list
Alt + * - Insert all possible completions
Alt + / - Attempt to complete filename
Alt + . - Yank last argument to previous command
Alt + c - Capitalize the word
Alt + l - Make word lowercase
Alt + t - Move words around
Alt + u - Make word uppercase
```

# vi mode #
```
$ set -o vi
```
`set -o emacs` to return to emacs editing mode.





