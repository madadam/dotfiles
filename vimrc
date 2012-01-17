" Enable completion menu
set wildmenu

" No tabs, indent width is 2 spaces
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set backspace=start,indent,eol

" Non-active windows have zero height
set winheight=10000
set winminheight=0

" Use existing window when switching buffers
set switchbuf=usetab

" Show current mode and command
set showmode
set showcmd
set hlsearch

" no line numbers
set nonumber

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

let mapleader=","

map <leader>t :CommandTFlush<cr>\|:CommandT<cr>

" Kill search highlighting
map <leader>s :nohlsearch<cr>

" Save
map <c-s> :w<cr>
imap <c-s> <esc><c-s>

" Quit
map <c-q> :q<cr>
imap <c-q> <esc><c-q>

map <f3> :cnext<cr>
map <s-f3> :cprev<cr>

" Kill trailing spaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd BufWritePre *.rb     :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.erb    :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.rake   :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre Rakefile :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre Gemfile  :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre Capfile  :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.css    :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.js     :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.d      :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.txt    :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre README   :call <SID>StripTrailingWhitespaces()

map <leader>w :call <SID>StripTrailingWhitespaces()<cr>

" Switch between header (.h) and implementation (.cpp) files
"
" Opens the file in a new tab or switches to it if already open.
"
" Assumes .h extension for headers and .cpp for implementations and also that
" both are in the same directory.
fun! SwitchSourceHeader()
  write

  if (expand ("%:e") == "cpp")
    tab drop %:r.h
  else
    tab drop %:r.cpp
  endif
endfun

map <leader><tab> :call SwitchSourceHeader()<cr>

