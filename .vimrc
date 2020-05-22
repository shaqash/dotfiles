"" General
color slate
" Color scheme
set number relativenumber
" Show line numbers
set linebreak
" Break lines at word (requires Wrap lines)
set showbreak=+++ 
" Wrap-broken line prefix
set textwidth=80
" Line wrap (number of cols)
set colorcolumn=80
" Color column
set showmatch
" Highlight matching brace
set visualbell
" Use visual bell (no beeping)
syntax on
" Syntax highlighting
set nowrap
" No text wrap
set hlsearch
" Highlight all search results
set smartcase
" Enable smart-case search
set ignorecase
" Always case-insensitive
set incsearch
" Searches for strings incrementally
set autoindent
" Auto-indent new lines
filetype plugin indent on
" Enable filetype indentation
set expandtab
" Use spaces instead of tabs
set shiftwidth=2
" Number of auto-indent spaces
set smartindent
" Enable smart-indent
set smarttab
" Enable smart-tabs
set softtabstop=2
" Number of spaces per Tab
set wildmode=longest,list,full
" Enable autocompletion:

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

"" Advanced
set ruler
" Show row and column ruler information

set undolevels=1000
" Number of undo levels
set backspace=indent,eol,start
" Backspace behaviour
highlight ColorColumn ctermbg=10
