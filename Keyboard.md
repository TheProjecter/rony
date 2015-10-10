
```
Under `WM`, desktops > windows
Under `Browser,` desktops > Window > Tab
Under `tmux`, tty|Windows > panes
Under `shell`, tty (a-F[1-6], edit `/etc/inittab`)
Under `vim`, app > windows

Under shell, configurate `~/.inputrc`
Under X, configurate `~/.Xmodmap`
Under tmux, configurate `~/.tmux.conf`
Under vim, configurate `~/.vimrc`

Yet alot of conflicts with gui apps
advice
 * tools are `xev`, `xmodmap`
 * check GUI applications like `gimp, openoffice, inkscape, pidgin`
 * check console applications like `shell, tmux, vim. elinks, weechat, canto`
```
| **key** | **environment** | **description** |
|:--------|:----------------|:----------------|
| `c-[1-9]` | gui browser     | tab 1-9         |
| `c-a`   | shell           | move: to start of line |
| `c-b`   | shell           | move: backward 1 char |
| `c-d`   | shell           | exit            |
| `c-e`   | shell           | move: to end of line |
| `c-f`   | shell           | move: forward 1 char |
| `c-g`   | shell           | bell            |
| `c-j`   | shell           | edit: enter     |
| `c-k`   | shell           | edit: cut to end of line |
| `c-l`   | shell           | clear screen    |
| `c-n`   | shell           | match history: next |
| `c-p`   | shell           | match history: previous |
| `a-[1-9]` | WM              | desktop 1-9     |
| `a-h/l` | WM              | size +/-        |
| `a-j/k` | WM              | jump to next/previous pane |
| `a-[1-9]` | WM              | desktop 1-9     |
| ```-[1-9]`` | tmux            | window 1-9      |