set nocompatible
filetype indent plugin on
syntax on

"color schemes
colorscheme badwolf 
"show command in bottom bar
set cursorline
"allows for autocomplete of file paths menu
set wildmenu

"set tab indentation to 4
set tabstop=4

"set soft tab which you control
set softtabstop=4
"set expand tab??
set expandtab

"highlight the current line
"set cursorline

"autocomplete paranthesis
set showmatch

"makes searches better
set incsearch 
set hlsearch

set hidden
set laststatus=2
set visualbell
set autoindent
set backspace=indent,eol,start
set mouse=a
set cmdheight=2
set number


"use jk instead of <esc>
inoremap jk <esc>
"get rid of search highlighting
nnoremap <leader><space> :nohlsearch<CR>
