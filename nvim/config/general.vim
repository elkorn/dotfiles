:filetype plugin indent on

:set autoindent
:set backspace=indent,eol,start
:set complete-=i
:set smarttab
:set tabstop=2 softtabstop=2 shiftwidth=2
:set clipboard=unnamed
:set expandtab
:set autoindent
:set copyindent
:set preserveindent
:set foldmethod=syntax

"-----Search options---------------------------------------------
:set hlsearch
:set incsearch
:set ignorecase
:set smartcase

"------------------------------------------------------------------------------
"    BEHAVIOUR
"------------------------------------------------------------------------------

:set hidden                            " make working with buffers easier

:autocmd! BufWritePost *.vim source ~/.config/nvim/init.vim " automatically apply changes in init.vim
:autocmd! BufWritePost * Neomake

:set nobackup
:set nowb
:set noswapfile

