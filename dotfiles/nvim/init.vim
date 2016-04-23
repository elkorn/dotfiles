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
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'chilicuil/vim-sprunge'
Plug 'amiorin/vim-project'
Plug 'vim-airline/vim-airline'
Plug 'sirver/UltiSnips'
Plug 'WolfgangMehner/vim-plugins'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'sbdchd/neoformat'
Plug 'shougo/unite.vim'
Plug 'wellle/targets.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': [ 'haskell', 'cabal' ] }

" Web
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'justinj/vim-react-snippets'

call plug#end()

let mapleader = ","

source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/appearance.vim
source ~/.config/nvim/config/autocommands.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/deoplete.vim
source ~/.config/nvim/config/vim-project.vim

source ~/.config/nvim/config/keymaps/general.vim
source ~/.config/nvim/config/keymaps/nerdtree.vim

source ~/.config/nvim/config/language/c.vim
source ~/.config/nvim/config/language/javascript.vim

