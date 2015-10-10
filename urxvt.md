# configure urxvt (rxvt-unicode)

### font spacing problem ###
command line `$ urxvt`
```
-letsp -1
-letsp -2
-letsp -3
etc.
```
or, in `~/.Xresources`
```
urxvt.letterSpace: -1
```
or, custom patch `wcwidth`