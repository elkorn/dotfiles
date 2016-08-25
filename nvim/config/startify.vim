" Plugin: vim-startify {{{2
nnoremap <leader>St  :Startify<cr>

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ '/data/repo/neovim/runtime/doc',
      \ '/Users/mhi/local/vim/share/vim/vim74/doc',
      \ ]
let g:startify_bookmarks = [
      \ { 'c': '~/.i3/config' },
      \ '~/.zshrc',
      \ ]
let g:startify_transformations = [
      \ ['.*vimrc$', 'vimrc'],
      \ ]

let g:startify_change_to_dir          = 0
let g:startify_change_to_vcs_root     = 1
let g:startify_session_persistence    = 1
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence    = 1
let g:startify_update_oldfiles        = 1
let g:startify_use_env                = 1
let g:startify_session_dir            = '~/.config/nvim/session'
