cp _vimrc ~/_vimrc
cp _gvimrc ~/_gvimrc
cp _vsvimrc ~/_vsvimrc
mkdir -p ~/vimfiles/autoload ~/vimfiles/bundle && \
curl -LSso ~/vimfiles/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/vimfiles/bundle

git clone https://github.com/ntpeters/vim-better-whitespace
git clone https://github.com/mustache/vim-mustache-handlebars
git clone https://github.com/tpope/vim-sensible
git clone https://github.com/sjl/badwolf
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/Raimondi/delimitMate
git clone https://github.com/nathanaelkane/vim-indent-guides
git clone https://github.com/pangloss/vim-javascript
git clone https://github.com/jelera/vim-javascript-syntax
git clone https://github.com/tpope/vim-surround
git clone https://github.com/tpope/vim-repeat
git clone https://github.com/PProvost/vim-ps1
