set shell=/bin/bash

"Vim package manager
execute pathogen#infect()
execute pathogen#helptags()
map <C-t> :NERDTreeToggle<CR>
map <C-e> :TagbarToggle<CR>

syntax on
colorscheme molokai
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
filetype plugin indent on

set showmode
set showcmd

set encoding=utf-8
set number

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set scrolloff=3		" Minimum lines between cursor and window edge
set showmatch		" Show parentheses matching
set textwidth=80	" Maximum line width
set whichwrap=<,>,[,],h,l " Allows for left/right keys to wrap across lines
set writebackup		" Write temporary backup files in case we crash
