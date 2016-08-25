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
    :nnoremap <leader>wr :w<cr>
    :nnoremap <leader>wo :e ~/vimwiki/org/index.org<cr>
    :nnoremap <leader>n :NERDTreeToggle<cr>
    :nmap <F2> :TagbarToggle<CR>
    :nnoremap <F3> :Autoformat<cr><cr>
    :nnoremap <leader>W :Welcome<cr>
    :nnoremap <leader>; :
    :nnoremap f *
    :nnoremap <leader>t :!gnome-terminal --working-directory=%:p:h &<cr>
    " :nnoremap <leader>tn :tabn<cr>
    " :nnoremap <leader>tp :tabp<cr>
    :nnoremap <leader>r :NERDTreeFind<cr>
    :nnoremap <C-l> :CtrlPLine<cr>
" }}}

 
 " INSERT mode {{{
:inoremap <c-d> <esc>ddi
:inoremap <leader>; <esc>:
" Duplicate current line
:inoremap <c-f> <esc>yypi
:inoremap jk <esc> 
:inoremap <leader>wr <esc>:w<cr>a
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