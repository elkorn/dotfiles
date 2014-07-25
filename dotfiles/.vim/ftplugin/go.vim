:nnoremap <leader>b :w<cr>:!go run %<cr>
:nnoremap <leader>gt :!go test<cr>
:nnoremap <leader>gd :GoDef<cr>
:nnoremap <leader>impl viw:GoImpl f @* io.Reader
" :autocmd BufWritePost *.go silent! !ctags -R &
