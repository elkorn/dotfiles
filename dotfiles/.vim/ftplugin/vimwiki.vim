:inoremap <buffer> <leader>{ {{{<cr>}}}<esc>O
:set wrap linebreak nolist
:autocmd BufWrite *.wiki silent! :VimwikiAll2HTML
