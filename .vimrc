packloadall
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'dikiaap/minimalist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
"Plug 'dense-analysis/ale'
"Plug 'ycm-core/YouCompleteMe'

call plug#end()

command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let mapleader = " "
nmap <leader>f :CocCommand prettier.formatFile<cr>
noremap <leader>b :Lex!<CR>
nnoremap <Leader>, :vertical resize +5<CR>
nnoremap <Leader>. :vertical resize -5<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
syntax on
set background=dark
set signcolumn=no
set updatetime=300
set number 
set linebreak
set showbreak=+++ 
set textwidth=100
set colorcolumn=100
set spelllang=he,en_us
set spell
set showmatch
set visualbell
set nowrap
set nohlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set wildmode=longest,list,full
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden
set ruler
set undolevels=1000
set backspace=indent,eol,start
set list
set listchars+=space:·
