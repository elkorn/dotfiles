"----------------------------------------------------------------------
" PLUGINS
"----------------------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" Pandoc / Markdown
Plug 'vim-pandoc/vim-pandoc', { 'for': [ 'pandoc', 'markdown' ] }
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': [ 'pandoc', 'markdown' ] }

" General
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neomru.vim'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'chilicuil/vim-sprunge'
Plug 'vim-airline/vim-airline'
Plug 'sirver/UltiSnips'
Plug 'WolfgangMehner/vim-plugins'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'sbdchd/neoformat'
Plug 'shougo/unite.vim'
Plug 'wellle/targets.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-abolish'
Plug 'mhinz/vim-startify'
Plug 'flazz/vim-colorschemes'
Plug 'easymotion/vim-easymotion', { 'on': '<plug>(easymotion-s2)' }
Plug 'mileszs/ack.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'dbakker/vim-projectroot'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': [ 'haskell', 'cabal' ] }

" Web
Plug 'mattn/emmet-vim', { 'for': [ 'javascript', 'html', 'css', 'sass', 'scss' ] }
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript' ]}
Plug 'mxw/vim-jsx', { 'for': [ 'javascript' ]}
Plug 'justinj/vim-react-snippets', { 'for': [ 'javascript' ]}

call plug#end()

let mapleader = ","

source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/appearance.vim
source ~/.config/nvim/config/autocommands.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/deoplete.vim
"source ~/.config/nvim/config/vim-project.vim
source ~/.config/nvim/config/startify.vim
source ~/.config/nvim/config/ack.vim
source ~/.config/nvim/config/unite.vim

source ~/.config/nvim/config/keymaps/general.vim
source ~/.config/nvim/config/keymaps/nerdtree.vim

source ~/.config/nvim/config/language/c.vim
source ~/.config/nvim/config/language/javascript.vim

