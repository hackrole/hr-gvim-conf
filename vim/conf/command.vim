" ------------------------------------------------------------------------
" File: command.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: command配置文件
" Last Modified: 2013-07-02
" -------------------------------------------------------------------------

" TODO: functions.vim
" source $VIMFILES/conf/functions.vim
"com! -nargs=0 Gt call GetTrans()
"com! -nargs=? Ec call Econf(<args>)
" vim:fdm=marker:fdc=1

"自动任务
" TODO:  寻找 session,info 插件
"autocmd VimLeave * :call s:SaveSession()
"autocmd VimEnter * :call s:ReadSession()

" 代码自动补全
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete

" html/css 自动打开 Emmet, (use if set g:use_emmet_install_global=0)
autocmd FileType html,css EmmetInstall

" html/jinja2 编辑环境配置
autocmd BufNewFile,BufRead *.html,*.htm,*.erb :call s:HtmlIDE()

function! s:HtmlIDE()
    set ft=jinja
    set autoindent
    set smartindent
    set listchars=tab:\ \ ,trail:-
    set tabstop=2
    set expandtab " 使用空格替代缩进
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" golang 环境配置
autocmd BufNewFile,BufRead *.go :call s:GolangIDE()
function! s:GolangIDE()
    set filetype=go
    set listchars=tab:\ \ ,trail:
    set tabstop=2
    set expandtab " 使用空格替代缩进
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" for css file edit
autocmd BufNewFile,BufRead *.css :call s:CssIDE()

function! s:CssIDE()
    set autoindent
    set smartindent
    set listchars=tab:\ \ ,trail:-
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" yml/yaml文件编辑
autocmd BufNewFile,BufRead *.yml,*.yaml :call s:YamlIDE()

function! s:YamlIDE()
    set autoindent
    set smartindent
    set listchars=tab:\ \ ,trail:-
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" php 编辑环境配置
autocmd BufNewFile,BufRead *.php :call s:PhpIDE()
autocmd FileType php :call s:PhpIDE()
function! s:PhpIDE()
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction

" python 编辑环境配置
autocmd BufNewFile,BufRead *.py,*.pyw :call s:PythonIDE()
autocmd FileType python set omnifunc=pythoncomplete#Complete
function! s:PythonIDE()
    setfiletype python
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction

" c/h 编辑环境配置
autocmd BufNewFile,BufRead *.c,*.h :call s:CHIDE()
function! s:CHIDE()
    set autoindent
    set smartindent
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" makefile 编辑环境配置
autocmd BufNewFile,BufRead Makefile,makefile,MAKEFILE :call s:MakefileIDE()
function! s:MakefileIDE()
    set autoindent
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction


" ruby 编辑环境配置
autocmd BufNewFile,BufRead *.rb, :call s:RubyIDE()
function! s:RubyIDE()
    setfiletype ruby
    set autoindent
    set smartindent
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" --------------------------------------------------
" [参考线切换] {{{
" --------------------------------------------------
fu! ReferenceLine(t)
    let ccnum = &cc
    if ccnum == '' | let ccnum = 0 | en
    let csw = &sw
    if a:t == 'add'
        let ccnum = ccnum + csw
        exec "setl cc=".ccnum
    elsei a:t == 'sub'
        let ccnum = ccnum - csw
        if ccnum >= 0 | exec "setl cc=".ccnum | en
    en
endf
nn <silent> <A-u> :call ReferenceLine('sub')<CR>
nn <silent> <A-o> :call ReferenceLine('add')<CR>
" }}}

