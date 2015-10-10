## Modes ##
  * command mode
  * insert mode (**Esc** exits)

## Exit ##
> ### quit, do not save ###
    * `:q! [Enter]`
> ### save and quit ###
    * `:ZZ`
    * `:x [Enter]`
    * `:qw`

## Motion ##
  * left, down, up, right             `h,j,k,l`

  * file
    * file top                          `1G` or `gg` or `:1`
    * file bottom                       `G'
    * nth line                          `[n]G` or `:[n]`

  * line beginning                    `0`
  * line end                          `$`

  * beginning of word                  `b`
  * beginning of blank delimited word  `B`
  * end of word                        `e`
  * end of blank delimited word        `E`
  * next word                          `w`
  * next blank delimited word          `W`
  * move to associated ( ), { }, [ ]   `%`

  * Screen
    * top     `H`
    * bottom  `L`
    * middle  `M`

(	Move a sentence back
)	Move a sentence forward
{	Move a paragraph back
}	Move a paragraph forward

fc	Move forward to c
Fc	Move back to c

## File ##
```
undo/redo all            `U`
undo/redo last           `u`
```


## Insert text ##
```
Insert before cursor                  i
Insert before line                    I

Append after cursor                   a
Append after line                     A

Open a new line after current line    o
Open a new line before current line   O

Replace one character                 r
Replace many characters               R
```

## Delete text ##
```
current line     dd or :d
word             dw
to end of line   D
char right       x
char left        X
```

## Search ##
```
forward        `/string`
backward       `?string`
next           `n`
previous       `N`
```

## Replace ##
```
search and replace    `s/pattern/string/flags`
repeat last replace   `&`
```




... to be continued