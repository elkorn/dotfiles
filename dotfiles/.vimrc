" more settings on http://amix.dk/vim/vimrc.html

" PATHOGEN {{{
execute pathogen#infect()
" }}}

" BASIC STUFF {{{
:set nocompatible
:set t_Co=254
:set number
:set relativenumber
:syntax on
:filetype plugin indent on
:set showmatch
:set matchtime=2
:set nowrap
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set background=dark
:colorscheme github
:set omnifunc=syntaxcomplete#Complete
:set splitright
:set foldmethod=syntax
:set foldlevelstart=1
:set nobackup
:set nowb
:set noswapfile
:set ignorecase
:set incsearch
:set smartcase
:set wildmenu
:set wildmode=longest:full,full
:set mouse=a
:set autoread
:set cursorcolumn
:set backspace=eol,start,indent

let g:airline_powerline_fonts = 1
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
let $XIKI_DIR="/home/elkorn/Code/xiki"
source /home/elkorn/Code/xiki/etc/vim/xiki.vim
" }}}

" GIT {{{
:nnoremap <leader>gqc :!git add .<cr>:!git commit
:nnoremap <leader>ga  :!git add %<cr>
:nnoremap <leader>gc  :!git commit %<cr>
:nnoremap <leader>gp  :!git push origin master<cr>
" }}}

" VIMWIKI {{{
let g:vimwiki_list = [{'path': '~/vimwiki/',
    \ 'path_html': '/usr/share/nginx/www/',
    \ 'template_path': '~/vimwiki/html/__templates/',
    \ 'template_default': 'default',
    \ 'template_ext': '.html',
    \ 'auto_export': 1}]
"}}}
" NERDTREE {{{
let NERDTreeShowHidden=1
" }}}

" ULTISNIPS {{{
let g:UltiSnipsExpandTrigger="<leader>x"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
" }}}

" YCM {{{
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
" let g:EclimCompletionMethod = 'omnifunc'
" }}}

" SYNTASTIC {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_aggregate_errors = 1
" let g:syntastic_html_jshint_conf =        " path to a .jshintrc
" }}}

" GOTAG {{{
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : '/home/elkorn/go/bin/gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" }}}

" DMENU FUF {{{
" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let fname = Chomp(system("git ls-files . | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction
:nnoremap <c-t> :call DmenuOpen("tabe")<cr>
:nnoremap <c-f> :call DmenuOpen("e")<cr>
" }}}

" PROJECT {{{
let g:project_use_nerdtree=1

set rtp+=~/.vim/bundle/vim-project/

" custom starting path
call project#rc("~/Code")

Project 'vertex-cover-kernelization'
Project 'pomodorojs-dev'
Project 'golang-playground'
Project 'piri-kvm-playground' 
Project 'test-pyramid-workshop-qe-2014'
Project '/home/elkorn/.config/dotfiles/dotfiles',        'dotfiles'
Project '/home/elkorn/.config/bash',                     'Bash'
" }}}

" STATUS LINE {{{
:set laststatus=2
" :set statusline+=%{fugitive#statusline()}
" :set statusline+=\  
:set statusline+=%y
:set statusline+=\  
:set statusline=%F
:set statusline+=%= 
:set statusline+=%l:%L
" }}}

" ABBREVIATIONS {{{
:iabbrev functino function
:iabbrev fucntion function
:iabbrev whiel while
:iabbrev @@ helluinster@gmail.com
" }}}

" AUTOCMD {{{
:augroup generic
:autocmd!
" :autocmd vimenter * if !argc() | NERDTree | endif
:autocmd BufEnter * silent! lcd %:p:h
:augroup END

:augroup filetype_html
:autocmd!
:augroup END

:augroup filetype_js
:autocmd!
:autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
:augroup END

:augroup filetype_go
:autocmd!
:autocmd BufRead,BufNewFile *.go set filetype=go
:autocmd FileType go  :nnoremap <leader>b :w<cr>:!go run %<cr>
:autocmd BufWritePost *.go silent! !ctags -R &
:augroup END

:augroup filetype_vim
:autocmd!
:autocmd FileType vim :setlocal foldmethod=marker
:augroup END
" }}}

" MAPPINGS {{{
:let mapleader=","
" NORMAL mode {{{
" Visually select a word
:nnoremap <leader><space> viw
" Move line down
:nnoremap <leader>- ddp
" Move line up
:nnoremap <leader>_ ddkP
" clear current line
:nnoremap <leader>c ddO
" Edit my Vimrc file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Apply my Vimrc file
:nnoremap <leader>av :w<cr>:so $MYVIMRC<cr>
" Surround current word with double quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Surround current word with single quotes
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" Move to end of line
:nnoremap L $
" Move to beginning of line
:nnoremap H ^
" Toggle relative line numbering
:nnoremap <leader>rn :set relativenumber!<cr>
" Set CWD to currently opened file
:nnoremap <leader>cwd :cd %:p:h<cr>
" Split navigation
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
:nnoremap <leader>w :w<cr>
:nnoremap <leader>n :NERDTreeToggle<cr>
:nmap <F2> :TagbarToggle<CR>
:nnoremap <F3> :Autoformat<cr><cr>
:nnoremap <leader>W :Welcome<cr>
" }}}

 
 " INSERT mode {{{
 :inoremap <c-d> <esc>ddi
 " Uppercase current  word
 :inoremap <c-u> <esc>viwUgtEi<right>
 " Lowercase current word
:inoremap <c-l> <esc>viwugtEi<right>
" Duplicate current line
:inoremap <c-f> <esc>yypi
:inoremap jk <esc> 
:inoremap <leader>w <esc>:w<cr>a
" }}}

" MOVEMENT mappings {{{
" Next parens
:onoremap in( :<c-u>normal! f(vi(<cr>
:onoremap in[ :<c-u>normal! f[vi[<cr>
:onoremap in{ :<c-u>normal! f{vi{<cr>
:onoremap in< :<c-u>normal! f<vi<<cr>

" Prev parens
:onoremap il( :<c-u>normal! F)vi(<cr>
:onoremap il[ :<c-u>normal! F]vi[<cr>
:onoremap il{ :<c-u>normal! F}vi{<cr>
:onoremap il< :<c-u>normal! F>vi<<cr>

" }}}
" }}}

" TINYKEYMAP {{{
call tinykeymap#Load('windows')

call tinykeymap#Map('windows', '<C-right>', 'wincmd >')
call tinykeymap#Map('windows', '<C-left>', 'wincmd <')
call tinykeymap#Map('windows', '<C-up>', 'wincmd +')
call tinykeymap#Map('windows', '<C-k>', 'wincmd +')
call tinykeymap#Map('windows', '<C-j>', 'wincmd -')
call tinykeymap#Map('windows', '<C-h>', 'wincmd <')
call tinykeymap#Map('windows', '<C-l>', 'wincmd >')

call tinykeymap#Map('windows', 'l', 'wincmd l')
call tinykeymap#Map('windows', 'h', 'wincmd h')
call tinykeymap#Map('windows', 'j', 'wincmd j')
call tinykeymap#Map('windows', 'k', 'wincmd k')
call tinykeymap#Map('windows', 'q', 'wincmd q')
" }}}

" SETTING FONTS {{{
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 14
" }}}
