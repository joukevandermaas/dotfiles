filetype off

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'isRuslan/vim-es6'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'PProvost/vim-ps1'

Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()

if iCanHazVundle == 0
  echo "Installing Bundles"
  :BundleInstall
endif

filetype plugin indent on
" Vundle End, everything before this is Vundle setup"

" Load color scheme 
colorscheme badwolf

set linebreak " break on words

let mapleader="\<space>"
set clipboard^=unnamed,unnamedplus " Allow copy/paste from clipboard using y/p

set hidden  " Hides old buffers with unsaved changes when opening a new one

" Configure tabs and indents to be logical
set tabstop=2  " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs -> spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
filetype indent on " Load filetype specific indent files

set mouse=a
set ruler
set number
set showcmd
set cursorline
set novisualbell           " don't flash screen on noop
set noerrorbells         " don't beep
set backspace=indent,eol,start " make backspace work like it should out of the box

set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildignore+=*/tmp/*,*/dist/*,*/bower_components/*,*/node_modules/*
set noswapfile
set nobackup
set nowritebackup
set undofile                " Save undo's after file closes
set undodir=~/.vim/undo " where to save undo histories
au BufRead,BufNewFile *.md set filetype=markdown

nnoremap <leader>t za
nnoremap <leader><leader> :w<CR>
nnoremap <leader>f gg=G''
nnoremap <leader>` :q<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <silent> <leader>/ :let @/ = ""<CR>
