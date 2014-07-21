let g:project_use_nerdtree=1

set rtp+=~/.vim/bundle/vim-project/

" custom starting path
call project#rc("~/Code")

Project 'go/src/github.com/elkorn/vertex-cover-kernelization'
Project 'pomodorojs-dev'
Project 'go/src/github.com/elkorn/golang-playground'
Project 'piri-kvm-playground' 
Project '/home/elkorn/.config/dotfiles/dotfiles'
Project '/home/elkorn/.config/bash'
