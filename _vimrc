execute pathogen#infect()

" Load color scheme (depends on pathogen)
colorscheme badwolf

set linebreak " break on words

let mapleader="\<space>"
set clipboard=unnamed " Allow copy/paste from windows clipboard using y/p

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

" Configure UI options
set mouse=a
set ruler
set number
set relativenumber
set showcmd
set cursorline
set novisualbell           " don't flash screen on noop
set noerrorbells         " don't beep
set backspace=indent,eol,start " make backspace work like it should out of the box

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
set foldlevelstart=4 " start folding at this level
set foldnestmax=7 " Don't allow crazy nested folds

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

" History and other useful things related to temp files
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildignore+=*\\tmp\\*,*\\dist\\*,*\\bower_components\\*,*\\node_modules\\*
set noswapfile
set nobackup
set nowritebackup
set undofile                " Save undo's after file closes
set undodir=$HOME\\vimfiles\\undo " where to save undo histories

" Useful leader shortcuts
nnoremap <leader>t za
nnoremap <leader><leader> :w<CR>
nnoremap <leader>f gg=G''
nnoremap <leader>` :q<CR>
nnoremap <leader>r :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>

set statusline=
set statusline+=%{expand('%:p:h:t')} " directory of current file
set statusline+=\\%t         " name of the file
set statusline+=%=\        " Switch to the right side
set statusline+=%<%{fugitive#head()} " branch
set statusline+=\ c%c        " Current column
set statusline+=\ %m      " is modified
set statusline+=[B%n] " buffer number

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
