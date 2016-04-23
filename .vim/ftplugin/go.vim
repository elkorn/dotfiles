:nnoremap <leader>b :w<cr>:!go run %<cr>
:nnoremap <leader>gr :GoRename<cr>
:nnoremap <leader>gt :lcd %:p:h<cr>:!go test<cr>
:nnoremap <leader>gd :GoDef<cr>
:nnoremap <leader>gi :GoImports<cr>
:nnoremap <leader>impl viw:GoImpl f @* io.Reader
:set foldmethod=syntax
:nnoremap <leader>lt :call ListTodos("go")<cr>
:nnoremap <Leader>e <Plug>(go-rename)


