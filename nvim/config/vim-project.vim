let g:project_use_nerdtree = 1
set rtp+=~/.config/nvim/plugged/vim-project/
call project#rc("~/Documents")
Project 'DKA/Tinki/backend'         , 'tinki-backend'
Project 'DKA/Tinki/category-tools'  , 'tinki-category-tools'
Project 'DKA/Tinki/e2e-tests'       , 'tinki-e2e-tests'
Project 'DKA/Tinki/frontend'        , 'tinki-frontend'
call project#rc()

