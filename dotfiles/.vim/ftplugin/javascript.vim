:iabbrev <buffer> iff if ()<left>
let g:syntastic_javascript_checkers = ['jshint']  " or
:nnoremap <buffer>  <leader>b :call JsBeautify()<cr>
" :autocmd BufWritePre *.js :call JsBeautify()
" Remove quotes and move to next line
:nnoremap <leader>uq xwxj^
