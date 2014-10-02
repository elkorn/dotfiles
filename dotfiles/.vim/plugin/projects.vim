let g:project_use_nerdtree=1

set rtp+=~/.vim/bundle/vim-project/

" custom starting path
call project#rc("~/Code")

Project 'ORUM/orum_web_fleetmanager'
Project 'ORUM/orum_web_backoffice'
Project 'KONE-China/kone-china-web'
Project 'Misc/json2md'
Project 'Misc/dotfiles'
Project 'Go/src/github.com/elkorn/vertex-cover-kernelization'

" let $GOPATH='/home/korneliusz/kone-china-web'
