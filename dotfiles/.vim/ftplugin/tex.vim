:set textwidth=80

:nnoremap <leader>tx :!pdflatex %:p:h/Main.tex<cr>
:autocmd BufWritePre *.tex :Autoformat

