#!/bin/bash
sudo apt-get install  -y build-essential cmake python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
