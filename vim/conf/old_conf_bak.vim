" ------------------------------------------------------
" [ pylint配置 ]{{{1
" ------------------------------------------------------
" TODO: not enable to install from vam
" TODO: not active as expect
" not check for every save
let g:pylint_onwrite = 0
" not show code rate
let g:pylint_show_rate = 0
" open the quickfix window
let g:pylint_cwindow = 1
"1}}}
"---------------------------------------------------
"  [ 自动添加关闭字符 ] {{{1
"---------------------------------------------------
inoremap { {}<Left>
inoremap {% {% %}<Left><Left>
inoremap {<CR> {<CR><CR>}<Up>
inoremap {{ {
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == '}' ? "\<Right>" : "}"
inoremap }} <down><down>

inoremap [ []<Left>
inoremap [[ [
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) =="]" ? "\<Right>" : "]"

inoremap ( ()<Left>
inoremap (( (
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) ==")" ? "\<Right>" : ")"

"inoremap <expr> " strpart(getline('.'), col('.')-1, 1) =='"' ? "\<Right>" : '""<Left>'
"1!}}}

" --------------------------------------------------
" [ snipmate配置 ] {{{1
" --------------------------------------------------
let g:snippets_dir = "~/.vim/snippets"
imap <A-e> <Plug>snipMateNextOrTrigger
" 设置文件类型对应的snipts,可以取消默认定义
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['python'] = "pyhton"
let g:snipMate.scope_aliases["ruby"] = "ruby,ruby_rails"
" 无匹配时，不插入tab
let g:snipMate['no_match_completion_feedkeys_chars'] = ""
" 定义snippets文件的注释符
let g:commentChar = {
\   'vim': '"',
\   "c": "//",
\   "python": "#",
\}
" 定义触发键和tab回退键
let g:snips_trigger_key = "<A-e>"
"let g:snips_trigger_key_backwards = "<A-S-e>"
" 1}}}

" --------------------------------------------------
" [自动完成函数] {{{1
" --------------------------------------------------
" 自动完成
fu! InsertTabWrapper()
	let col=col('.')-1
	return (!col || getline('.')[col-1] !~ '\k') ? "\<TAB>" : "\<C-P>"
endf
" TODO: 移走
" 映射键
"ino <TAB> <C-R>=InsertTabWrapper()<CR>
" 强制TAB键
"ino <S-TAB> <C-R>="\<TAB>"<CR>
" 1}}}

" --------------------------------------------------
" [格式化和转换函数] {{{1
" --------------------------------------------------
" css格式函数
fu! CssFF(t)
	" 合并Css到一行
	if(a:t=='jtl')
		%s/{\n\s*/{ /ge
		%s/;\n\s*/; /ge
		%s/\s*}/ }/ge
	" 拆分Css到多行
	elsei(a:t=='stl')
		%s/{\s*/{\r\t/ge
		%s/;\s*/;\r\t/ge
		%s/\t*}/}/ge
	" 转换Css字符中文
	elsei(a:t=='ft')
		%s/\(font-family:.*\|font:.*\)宋体/\1\\5B8B\\4F53/ge
		%s/\(font-family:.*\|font:.*\)微软雅黑/\1\\5FAE\\8F6F\\96C5\\9ED1/ge
	" 转换样式颜色为小写
	elsei(a:t=='ctl')
		%s/#\([0-9a-fA-F]\{3,6\}\)\(\s\|\n\|;\|}\)/\='#'.tolower(submatch(1)).submatch(2)/ge
	" 转换样式颜色为大写
	elsei(a:t=='ctu')
		%s/#\([0-9a-fA-F]\{3,6\}\)\(\s\|\n\|;\|}\)/\='#'.toupper(submatch(1)).submatch(2)/ge
	" 在}后跟断行
	elsei(a:t==1)
		%s/}\s*\(\S\)/}\r\1/ge
	" 在{前加空格
	elsei(a:t==2)
		%s/\(\S\){/\1 {/ge
	" 在}前添加换行
	elsei(a:t==3)
		%s/\(\S\)}/\1\r}/ge
	" 在注释前后断行
	elsei(a:t==4)
		%s/}\s\/\*/}\r\/\*/ge
		%s/\*\/\s\.\|\*\/\./\*\/\r\./ge
	" 在,后添加空格
	elsei(a:t==5)
		%s/,\(\S\)/, \1/ge
	elsei(a:t==6)
		%s/\([a-zA-Z0-9]\)}/\1;\r}/ge
	" 生成发布文件
	elsei(a:t=='build')
		"call CssFF('jtl')
		%s/\s{/{/ge
		%s/{\s/{/ge
		%s/;\s/;/ge
		%s/,\s/,/ge
		"%s/\n//g
	" 格式化代码
	elsei(a:t=='ff')
		cal CssFF('stl')
		cal CssFF(1)
		cal CssFF(2)
		cal CssFF(3)
		cal CssFF(4)
	en
endf
" 映射键
"nn <A-f>j :cal CssFF('jtl')<CR>
"nn <A-f>s :cal CssFF('stl')<CR>
"nn <A-f>l :cal CssFF('ctl')<CR>
"nn <A-f>u :cal CssFF('ctu')<CR>
"nn <A-f>t :cal CssFF('ft')<CR>

fu! MyFF(t)
	if a:t=='sw'
		%s/^\s*//ge
	elsei a:t=='ew'
		%s/\s*$//ge
	en
endf
" 1}}}

