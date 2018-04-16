cp _virtualvimrc ~/_vimrc
cp _virtualgvimrc ~/_gvimrc
cp _vsvimrc ~/_vsvimrc

# rm -rf ~/vimfiles/bundle
mkdir -p ~/vimfiles/autoload ~/vimfiles/bundle && \
curl -LSso ~/vimfiles/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/vimfiles/bundle

git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/tpope/vim-surround
git clone https://github.com/tpope/vim-sensible

git clone https://github.com/ntpeters/vim-better-whitespace
git clone https://github.com/nathanaelkane/vim-indent-guides

git clone https://github.com/joukevandermaas/vim-ember-hbs
git clone https://github.com/isRuslan/vim-es6
git clone https://github.com/jelera/vim-javascript-syntax
git clone https://github.com/PProvost/vim-ps1

git clone https://github.com/morhetz/gruvbox
git clone https://github.com/sjl/badwolf
git clone https://github.com/nanotech/jellybeans.vim
