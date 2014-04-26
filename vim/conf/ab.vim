" ------------------------------------------
" [python 自定义缩写]{{{1
" -------------------------------------------
autocmd FileType html :call PythonAb()

function PythonAb()
    iab <buffer> djvar {{ }}<ESC>2hi

endfunction
"1}}}


