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
set title
set dir=/var/tmp
set backupdir=/var/tmp
set undodir=/var/tmp

" History
set history=1000
set undolevels=1000

" Numbering
set nu
set rnu

" Tabspaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
"set autoindent
"set smartindent
"set cindent

" Highlight blank characters
"set list
"set listchars=tab:▸\ ,trail:.,extends:#,nbsp:⎵,extends:»,precedes:«
"set listchars=tab:▸\ ,trail:.,extends:#,nbsp:⎵,extends:>,precedes:<,eol:⏎

" Spacing
set linespace=6

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
set showbreak=...
set textwidth=0
set wrapmargin=0
set formatoptions-=t
set formatoptions+=l
set scrolloff=10
set sidescrolloff=6

" Search
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
nmap <silent> ,/ :nohlsearch<CR>

" Spelling
" set spell
" set spelllang=en,sk

" Mouse
set mouse=a
set ttymouse=xterm2

" Long line jumps
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Ups ... forgot sudo :)
cmap w!! w !sudo tee % >/dev/null
