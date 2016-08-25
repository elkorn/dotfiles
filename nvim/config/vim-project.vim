let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.config/nvim/plugged/vim-project/
call project#rc("~/Documents")
Project 'DKA/Tinki/tinki-backend'
Project 'DKA/Tinki/tinki-category-service' 
Project 'DKA/Tinki/tinki-e2e-tests'
Project 'DKA/Tinki/tinki-frontend'
call project#rc()

