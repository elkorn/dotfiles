#!/bin/bash

declare -a repos=( 
  "git://github.com/megaannum/self.git" 
  "git://github.com/megaannum/forms.git" 
  # "git://github.com/Shougo/vimproc.git"
  # "git://github.com/Shougo/vimshell.git"
  "-b scala-2.9 git://github.com/aemoncannon/ensime.git"
  "git://github.com/megaannum/vimside.git"
)

for repo in "${repos[@]}"; do
    git submodule add $repo 
done;

git submodule update --init --recursive
