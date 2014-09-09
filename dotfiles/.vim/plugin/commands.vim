function ProfileStart()
    :profile start profile.log
    :profile func *
    :profile file *
endfunction

function ProfileStop()
    :profile pause
    :noautocmd qall!
endfunction



command! -nargs=0 ProfStart call ProfileStart()
command! -nargs=0 ProfStop  call ProfileStop()
