" Vim color file
" Maintainer:   Connor Berry <connorberry@yahoo.com>
" Last Change:	2006/05/25 
" Version: 1.0

set background=dark
highlight clear
if exists("syntax on")
    syntax reset
endif

let g:colors_name = "greenstring-rony"

highlight Normal     term=none ctermfg=grey         cterm=none ctermbg=black  guifg=white    gui=none guibg=black
highlight Comment    term=none ctermfg=DarkGrey     guifg=DarkGrey    
highlight Constant   term=none ctermfg=green        cterm=none guifg=green      gui=none
highlight Special    term=none ctermfg=green        cterm=bold guifg=green      gui=bold
highlight Identifier term=none ctermfg=lightgreen   cterm=none guifg=lightgreen  gui=none
highlight Statement  term=bold ctermfg=cyan         cterm=bold guifg=cyan    gui=bold
highlight Operator   term=bold ctermfg=cyan         cterm=bold guifg=cyan    gui=bold
highlight PreProc    term=bold ctermfg=lightgreen   cterm=none guifg=green   gui=none
highlight Type       term=bold ctermfg=lightgreen   cterm=none guifg=lightgreen gui=none
highlight String     term=none ctermfg=green        cterm=none guifg=green      gui=none
highlight Number     term=none ctermfg=green        cterm=none guifg=green      gui=none

" vim:ts=2:sw=2:et
