:let mapleader=","
" NORMAL mode {{{
    " Toggle showing invisibles
    :nnoremap <leader>l :set list!<cr>
    " Visually select a word
    :nnoremap <leader><space> viw
    " Move line down
    :nnoremap <leader>- ddp
    " Move line up
    :nnoremap <leader>_ ddkP
    " clear current line
    :nnoremap <leader>c ddO
    " Edit my Vimrc file
    :nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    :nnoremap <leader>Ev :e $MYVIMRC<cr>
    " Apply my Vimrc file
    :nnoremap <leader>av :w<cr>:so $MYVIMRC<cr>
    " Surround current word with double quotes
    :nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    " Surround current word with single quotes
    :nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
    " Toggle relative line numbering
    :nnoremap <leader>rn :set relativenumber!<cr>
    " Set CWD to currently opened file
    :nnoremap <leader>cwd :cd %:p:h<cr>
    " Split navigation
    :nnoremap <C-J> <C-W><C-J>
    :nnoremap <C-K> <C-W><C-K>
    :nnoremap <C-L> <C-W><C-L>
    :nnoremap <C-H> <C-W><C-H>
    :nnoremap <C-S-J> <C-W><C-S-J>
    :nnoremap <C-S-K> <C-W><C-S-K>
    :nnoremap <C-S-L> <C-W><C-S-L>
    :nnoremap <C-S-H> <C-W><C-S-H>
    :nnoremap <leader>w :w<cr>
    :nnoremap <leader>n :NERDTreeToggle<cr>
    :nmap <F2> :TagbarToggle<CR>
    :nnoremap <F3> :Autoformat<cr><cr>
    :nnoremap <leader>W :Welcome<cr>
" }}}

 
 " INSERT mode {{{
:inoremap <c-d> <esc>ddi
" Duplicate current line
:inoremap <c-f> <esc>yypi
:inoremap jk <esc> 
:inoremap kj <esc> 
:inoremap <leader>w <esc>:w<cr>a
" }}}

" MOVEMENT mappings {{{
" Next parens
:onoremap in( :<c-u>normal! f(vi(<cr>
:onoremap in[ :<c-u>normal! f[vi[<cr>
:onoremap in{ :<c-u>normal! f{vi{<cr>
:onoremap in< :<c-u>normal! f<vi<<cr>

" Prev parens
:onoremap il( :<c-u>normal! F)vi(<cr>
:onoremap il[ :<c-u>normal! F]vi[<cr>
:onoremap il{ :<c-u>normal! F}vi{<cr>
:onoremap il< :<c-u>normal! F>vi<<cr>

" }}}

call tinykeymap#Load('windows')

call tinykeymap#Map('windows', '<C-right>', 'wincmd >')
call tinykeymap#Map('windows', '<C-left>', 'wincmd <')
call tinykeymap#Map('windows', '<C-up>', 'wincmd +')
call tinykeymap#Map('windows', '<C-k>', 'wincmd +')
call tinykeymap#Map('windows', '<C-j>', 'wincmd -')
call tinykeymap#Map('windows', '<C-h>', 'wincmd <')
call tinykeymap#Map('windows', '<C-l>', 'wincmd >')

call tinykeymap#Map('windows', 'l', 'wincmd l')
call tinykeymap#Map('windows', 'h', 'wincmd h')
call tinykeymap#Map('windows', 'j', 'wincmd j')
call tinykeymap#Map('windows', 'k', 'wincmd k')
call tinykeymap#Map('windows', 'q', 'wincmd q')