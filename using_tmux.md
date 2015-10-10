## Invoke tmux in a new terminal ##
```
urxvt -e tmux &
```
or
```
xterm -e tmux &
```
## Under tmux ##
> ### start a ssh session in a new window ###
```
$ tmux neww "ssh user@host [-p port]"
```
> ### start a ssh session in a new pane, under same window ###
```
$ tmux split -h "ssh user@host [-p port]"
$ tmux split -v "ssh user@host [-p port]"
```

## Keybinds ##
| Alt-a | tmux bind -n M-a 'exec alsamixer' |
|:------|:----------------------------------|
| Alt-m | tmux bind -n M-m 'exec mc -x'     |