:inoremap <buffer> <leader>{ {{{<cr>}}}<esc>O
:autocmd BufWrite *.wiki silent! :VimwikiAll2HTML
