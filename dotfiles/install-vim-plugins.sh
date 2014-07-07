#!/bin/bash

mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd .vim/bundle
git submodule init
git submodule update

ln -s $(pwd)/.vim/bundle ~/.vim/bundle
