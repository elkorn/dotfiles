if $COLORTERM == 'gnome-terminal'
   set t_Co=256
endif
:set list
:set cc=81
:hi ColorColumn ctermbg=darkgray
:set nowrap
" begin key bindings
:map <F2> :FufFile<CR>
:map <F3> :MRU<CR>
:map <F4> :NERDTreeToggle <CR>
:map <C-k> :tabn<CR>
:map <C-j> :tabp<CR>
:map <tab> <C-w><C-w>
map <c-t> :call DmenuOpen("find .", "tabe")<cr>
map <c-f> :call DmenuOpen("find .", "e")<cr>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
" If the current buffer has never been saved, it will have no name,

" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

" end key bindings
" begin syntastic options
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_jump=1
"let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_error_symbol = '★'
let g:syntastic_style_error_symbol = '>'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '>'
let g:syntastic_cpp_compiler= 'clang++'
let g:syntastic_cpp_compiler_options= ' -std=c++11 -stdlib=libc++'
" end syntastic options

" begin vimwiki options
let g:vimwiki_list = [{'path': '~/vimwiki/',
    \ 'path_html': '/usr/share/nginx/www/',
    \ 'template_path': '~/vimwiki_html/__templates/',
    \ 'template_default': 'default',
    \ 'template_ext': '.html',
    \ 'auto_export': 1}]
" end vimwiki options
execute pathogen#infect()
colorscheme jellybeans
syntax on
filetype plugin indent on

set omnifunc=syntaxcomplete#Complete
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set tw=80
" searching
set ignorecase smartcase incsearch hlsearch
set shortmess+=I

" Turn backup off
set nobackup
set nowb
set noswapfile
set foldmethod=syntax
" au VimEnter * NERDTreeCWD
au InsertEnter * hi StatusLine ctermbg=red ctermfg=white
au InsertLeave * hi StatusLine ctermbg=white ctermfg=black
au VimEnter * wincmd w
au BufEnter * cd%:p:h
au CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()

" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(lister, cmd)
  let fname = Chomp(system( a:lister . " | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction
