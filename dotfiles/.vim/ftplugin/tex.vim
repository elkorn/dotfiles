:set textwidth=80
:let g:tex_flavor='latex'

:nnoremap <leader>tx :!pdflatex %:p:h/Main.tex<cr>
:nnoremap <leader>tb :!bibtex Main<cr>
