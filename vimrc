" Enable completion menu
set wildmenu

" No tabs, indent width is 2 spaces
set autoindent
set expandtab
set tabstop=2
set smarttab
set shiftwidth=2
set backspace=start,indent,eol

" Non-active windows have zero height
set winheight=10000
set winminheight=0

" Use existing window when switching buffers
set switchbuf=useopen

" Show line numbers, current mode and command
set number
set showmode
set showcmd
set hlsearch

" Case insensitive search
set ignorecase
set smartcase

" Kill swap files
set noswapfile

" Kill mouse
set mouse=

syntax on
filetype on
filetype indent on
filetype plugin on


" NERD Tree
map ,d :NERDTreeToggle<cr>

" Kill search highlighting
map ,s :nohlsearch<cr>

" Save
map <c-s> :w<cr>
imap <c-s> <esc><c-s>

" Quit
map <c-q> :q<cr>
imap <c-q> <esc><c-q>


" Window navigation
map <a-left> <c-w><left>
map <a-right> <c-w><right>
map <a-up> <c-w><up>
map <a-down> <c-w><down>

imap <a-left> <esc><c-w><left>
imap <a-right> <esc><c-w><right>
imap <a-up> <esc><c-w><up>
imap <a-down> <esc><c-w><down>

map <f3> :cnext<cr>
map <s-f3> :cprev<cr>

" CommandT
nmap <c-t> :CommandT<cr>
nmap ,t :CommandTFlush<cr>
