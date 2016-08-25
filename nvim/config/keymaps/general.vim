" General
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>Ev :e $MYVIMRC<CR>

nnoremap <leader>m  :Neomake<CR>
nnoremap <leader>af  :Neoformat<CR>
nnoremap <leader>af  :Neoformat<CR>
nnoremap <ESC> :noh<CR>

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

nnoremap <Leader>lo :lopen<CR>      " open location window
nnoremap <Leader>lc :lclose<CR>     " close location window
nnoremap <Leader>l, :ll<CR>         " go to current error/warning
nnoremap <Leader>ln :lnext<CR>      " next error/warning
nnoremap <Leader>lp :lprev<CR>      " previous error/warning

nnoremap <Leader>a :ProjectRootExe Ack 
nnoremap <Leader>ub :Unite -start-insert buffer<CR>
nnoremap <Leader>ug :Unite grep:.<CR>
