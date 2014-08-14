:iabbrev <buffer> iff if ()<left>
let g:syntastic_javascript_checkers = ['jshint']  " or
:nnoremap <buffer>  <leader>b :call JsBeautify()<cr>
:inoremap <buffer>  <leader>b <esc>:call JsBeautify()<cr>i
" :autocmd BufWritePre *.js :call JsBeautify()
" Remove quotes and move to next line
:nnoremap <leader>uq xwxj^
