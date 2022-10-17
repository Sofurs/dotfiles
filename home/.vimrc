let mapleader = " "

" General vim settings
set hidden
set fileformat=unix
set encoding=utf-8
set timeoutlen=500
set ttyfast
set undofile
set endofline
set fixendofline
set splitbelow
set splitright
set smartcase

" Numbering
set nu
set rnu

" Tabspaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set cindent

" Tabline
set showtabline=2
highlight TabLine ctermfg=White ctermbg=DarkGrey
highlight TabLineFill ctermfg=Black ctermbg=White

" Syntax
syntax on

" Wrap + Scrolloff
set wrap
set linebreak
set breakindent
set scrolloff=10
set sidescrolloff=6

" Spelling
" set spell
" set spelllang=en,sk

" Mouse
set mouse=a
set ttymouse=xterm2
