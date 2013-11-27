set nocompatible
filetype off
if has('win32')
  set rtp^=~/.vim/
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'bling/vim-airline'

" Prettify
set t_Co=256
syntax on
filetype plugin indent on
:colorscheme Monokai
set number
set cursorline
set ruler
set shortmess=atI

if has('gui_running')
  set guioptions-=T
  if has('gui_gtk2')
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
  elseif has('gui_macvim')
    set guifont=Menlo\ Regular:h12
  elseif has('gui_win32')
    set guifont=Consolas:h10:cANSI
  endif
endif

" Enable mouse
set mouse=a
set ttymouse=xterm2

" Stuff
set encoding=utf-8 nobomb
set backspace=indent,eol,start
set history=1000
set undofile
set undolevels=1000
set undoreload=10000
set list listchars=tab:»·,trail:·
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set nostartofline

" Indentation
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab
set autoindent

" Search
set incsearch
set hlsearch
set wrapscan
set ignorecase

" Tmp files
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
set undodir=~/.vim/undo

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" CtrlP (quick find files)
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERDTree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeChDirMode = 2
nnoremap <f2> :NERDTreeToggle<cr>
