#!/bin/bash

mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd .vim/bundle
git submodule update --init --recursive

ln -s $(pwd)/.vim/bundle ~/.vim/bundle
cd ../..
./install-ycm.sh
./install-vim-go.sh
./install-ctags.sh
