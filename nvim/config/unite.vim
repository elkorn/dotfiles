call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden --ignore ' .
                                      \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore '.
                                      \  '''node_modules'''
endif
