set shell=/bin/zsh

map <C-t> :NERDTreeToggle<CR>
map <C-e> :TagbarToggle<CR>
noremap <F3> :Autoformat<CR>

syntax on
colorscheme PaperColor
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight ExtraWhitespace ctermbg=GREY
filetype plugin indent on
set clipboard+=unnamedplus

set showmode
set showcmd

set encoding=utf-8
set number

set noswapfile  " disable creating swapfiles, see https://goo.gl/FA6m6h

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

set autoindent

set scrolloff=3
set showmatch
set textwidth=120
set whichwrap=<,>,[,],h,l

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
