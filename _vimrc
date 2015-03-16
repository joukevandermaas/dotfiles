set nocompatible " Get rid of old vi compatibility 

" Load pathogen and its addons
execute pathogen#infect()

" Load color scheme (depends on pathogen)
syntax enable
colorscheme badwolf
set lazyredraw " only redraw when needed
set ttyfast

set spell spelllang=en_us " spell checking rules
set noswapfile

let mapleader="\<space>"
set clipboard=unnamed " Allow copy/paste from windows clipboard using y/p

set hidden  " Hides old buffers with unsaved changes when opening a new one

" Configure tabs and indents to be logical
set tabstop=4  " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs -> spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
filetype indent on " Load filetype specific indent files

" Configure UI options
set mouse=a
set number
set relativenumber
set showcmd
set cursorline
set novisualbell           " don't flash screen on noop
set noerrorbells         " don't beep
set backspace=indent,eol,start " make backspace work like it should out of the box

" Markdown stuff
let g:vim_markdown_folding_disabled=1
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

" search options
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
nnoremap <leader>/ :nohlsearch<CR> " remove highlights with <space>/

" folds are useful
set foldenable " enable folds
set foldmethod=syntax " fold based on syntax (will not work for all filetypes)
set foldlevelstart=3 " start folding at level 3 (so you don't get entirely folded files at startup)
set foldnestmax=7 " Don't allow crazy nested folds
nnoremap <leader>t za

" Movement stuff
"nnoremap j gj " visual line == line
"nnoremap k gk
" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   h     <NOP>
noremap   l   <NOP>

" History and other useful things related to temp files
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile

" Useful leader shortcuts
noremap <leader><leader> :w<CR>
noremap <leader>f gqip
