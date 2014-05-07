" ------------------------------------------------------------------------
" File: plugin.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 配件配置文件
" Last Modified: 2013-07-02
" TOOD: 考虑每个插件单独配置，最后统一source
" -------------------------------------------------------------------------

" --------------------------------------------------
" [netrw相关配置]{{{1
" --------------------------------------------------
" 支持ftp/ssh等协议编辑远程文件的插件
let g:netrw_home = "~/.vim/temp/netrw"
" 1}}}
" --------------------------------------------------
"  [Emmet相关配置] {{{1
" --------------------------------------------------
let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'perl' : {
\    'aliases' : {
\      'req' : 'require '
\    },
\    'snippets' : {
\      'use' : "use strict\nuse warnings\n\n",
\      'warn' : "warn \"|\";",
\    }
\  }
\}
" only insert mode
let g:user_emmet_mode='i'
" only use for html/css
let g:user_emmet_install_global = 1
let g:user_emmet_expandabbr_key = '<A-e>'
let g:use_emmet_complete_tag = 1
"  1}}}
" --------------------------------------------------
" [NERDTree相关配置] {{{1
" --------------------------------------------------
" TODO: doc reaad and <f2>
" 映射切换按键
map <silent> <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
nn <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
imap <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
" nerdtree ignore
let NERDTreeIgnore=['\.o$']
let NERDTreeIgnore+=['\.pyc$']
let NERDTreeIgnore+=['\.bak$']
let NERDTreeIgnore+=['\.elc']
let NERDTreeIgnore+=['^ctags$']
let NERDTreeIgnore+=['^etags$']
let NERDTreeIgnore+=['^filenametags$']
let NERDTreeIgnore+=['^cscope\.\(files\|in\.out\|out\|po.out\)$']
" more colourful
let NERDChristmasTree=1
" set nerdtree bookmark file path
let NERDTreeBookmarksFile=expand('~')."/.vim/temp/nerdtree.bookmarks"
" show bookmarks on startup
let NERDTreeShowBookmarks=1
" not show hidden file on startup
let NERDTreeShowHidden=0
" show line number on startup
let NERDTreeShowLineNumbers=1
" nerdtree positioin
let NERDTreeWinPos="left"
" 1}}}
" --------------------------------------------------
" [Conque相关配置] {{{1
" --------------------------------------------------
" Conque指定Python版本
let g:ConqueTerm_PyVersion=2
" 取消警告信息
let g:ConqueTerm_StartMessages = 1
" TODO: setlocal listchars
" 1}}}
" --------------------------------------------------
"  [Riv相关配置]{{{1
" -------------------------------------------------
" set never fold
let g:riv_fold_level=0
"1}}}
" --------------------------------------------------
"  [Tagbar相关配置]{{{1
" --------------------------------------------------
" taglist的替代插件
nmap <F4> :TagbarToggle<CR>
imap <F4> <Esc>:TagbarToggle<CR>
nmap <C-F4> :TagbarTogglePause<CR>
imap <C-F4> :TagbarTogglePause<CR>
" default sort tags by order in source file
let g:tagbar_sort=0
" show line number<1-absolute, 2-relative>
let g:tagbar_show_linenumbers=2
" default not fold the tags
let g:tagbar_fold_level=99
" TODO Tagbar golang gotags支持
"let g:tagbar_type_go = {
"\   'ctagstype': 'go',
"\   'kind': [
"\       'p:package',
"\       'i:imports:1',
"\       'c:constants',
"\       'v:variables',
"\       't:types',
"\       'n:interfaces',
"\       'w:fields',
"\       'e:embedded',
"\       'm:methods',
"\       'r:constructor',
"\       'f:functions',
"\   ],
"\   'sro': '.',
"\   'kind2scope': {
"\       't': 'ctype',
"\       'n': 'ntype',
"\   },
"\   'scope2kind': {
"\       'ctype': 't',
"\       'ntype': 'n',
"\   },
"\   'ctagsbin': 'gotags',
"\   'ctagsargs': '-sort -silent'
"\}
"1}}}
" -------------------------------------------------
"  [TagmaTask插件配置]{{{1
" -------------------------------------------------
" not jump to the first task when startup
let g:TagmaTasksJumpTask=0
" the work as task
let g:TagmaTaskTokens = ['FIEXME', 'TODO', 'NOTE', 'WARNING']
"1}}}
" -------------------------------------------------
"  [gtrans配置]{{{1
" -------------------------------------------------
" key to translate zh word to en
nn <leader>gT :Gtrans('en')
"1}}}
" -------------------------------------------------
"  [grep配置]{{{1
" -------------------------------------------------
" TODO: conf and use
"1}}}
" -------------------------------------------------
"  [c.vim配置]{{{1
" -------------------------------------------------
"
"1}}}
" -------------------------------------------------
"  [a.vim配置]{{{1
" -------------------------------------------------
" not create one when header file not exists.
let g:alternateNoDefaultAlternate = 1
"1}}}
" --------------------------------------------------
" [ lookupfile ] {{{1
" --------------------------------------------------
" TODO: note org
"let g:LookupFile_TagExpr ='"./filenametags"'
" 至少输入两个字符才开始查找
let g:LookupFile_MinPatLength = 2
" 不保存上次查找字符串
let g:LookupFile_PreserveLastHistory = 0
" 保存查找历史 LookupFile
let g:LookupFile_PreservePatternhistory = 1
" 取消默认<f5>按键绑定
let g:LookupFile_DisableDefaultMap = 1
" 回车打开第一个匹配项目
let g:LookupFile_AlwaysAcceptFirst = 1
" 不允许创建不存在的文件
let g:LookupFile_AllowNewFiles = 0
" 设置tag 文件的名字
if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif

" 设置查找忽略大小写
function! LookupFile_IgnoreCaseFunc(pattern)

    let _tags = &tags
    try 
        let $tags = eval(g:LooupFile_TagExpr)
        let newpattern ='\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echoh1 ErrorMsg | echo "Exception:" . v:exception | echoh1 NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
"let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
" 映射LookupFile 为,lk
nmap <leader>lt :LUTags<cr>
" 映射LuBufs为,ll
nmap <leader>lb :LUBufs<cr>
" 映射LUWalk为,lw
nmap <leader>lw :LUWalk<cr>
"1}}}
" --------------------------------------------------
" [ ctags配置] {{{1
" --------------------------------------------------
" TODO: project 相关
if filereadable('./tags')
   set tags+=./tags
endif
if filereadable('./ctags')
   set tags+=./ctags
endif
"set tags+=~/.vim/tagfiles/scrapy.0.16.4.tags
"set tags+=~/.vim/tagfiles/sqlachemy.0.8.1.tags
"set tags+=~/.vim/tagfiles/selenium.2.33.0.tags
"1}}}
" --------------------------------------------------
" [ minibufExpl配置] {{{1
" --------------------------------------------------
" 终端下禁用
if !has('gui_running')
    let g:loaded_minibufexplorer = 1
endif
" minibuf splits
let g:miniBufExplSplitBelow = 0
" max lines
let g:miniBufExplmaxSize = 3
" num of buf to show minibufexpl, big to deny adn start by keymap
let g:miniBufExplorerMoreThanOne = 15
" enbale [hjkl] key
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
" tab to switch
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" not reopen
let g:miniBufExplCloseOnSelect = 1
" for debug
"let g:miniBufExplorerDebugLevel = 0/4/10
" 按键绑定
map <Leader>mt :TMiniBufExplorer<cr>
map <leader>mm :MiniBufExplorer<cr>
map <leader>mu :UMiniBufExplorer<cr>
"1}}}
" --------------------------------------------------
" [powerline相关配置] {{{
" --------------------------------------------------
set ls=2
let g:Powerline_symbols='fancy'
" }}}
" --------------------------------------------------
" [ UltiSnips配置 ] {{{1
" --------------------------------------------------
" 使用python2.7
let g:UltiSnipsUsePythonVersion = 2
" how window is opened
let g:UltiSnipsEditSplit = "horizontal"
" TODO: 貌似无效;; 定义私有Snips目录
"let g:UltiSnipsSnippetsDir = "~/.vim/snippets/ultisnips"
" 定义按键
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsListSnippets = "<f7>"
let g:UltiSnipsJumpForwardTrigger = "<C-k>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

" 1}}}

"-------------------------------------------------------------------------
" [ neocomplcache 设置 ]{{{1
"-------------------------------------------------------------------------
" TODO: not finish yet
"启动 neocomplcache
let g:neocomplcache_enable_at_startup = 1
" 缓存dir
let g:neocomplcache_temporary_dir = "~/.vim/temp/neocaches"
" 补全弹出窗list-max
let g:neocomplcache_max_list = 18
" 补全不忽略大小写
"let g:neocomplcache_enable_ignore_case = 0
" smart case
let g:neocomplcache_enable_smart_case = 1
" 不自动弹出不全列表
"let g:neocomplcache_disable_auto_complete = 1
" 根据文件类型配置 字典文件
let g:neocomplcache_dictionary_filetype_lists = {
\   'default': '',
\   'vishell': '',
\   'css': '',
\   'php': '',
\   'python': $VIMFILES."/dict/python.dict",
\}
" 自定义source
if !exists("g:neocomplcache_sources_list")
    let g:neocomplcache_sources_list = {}
endif
let g:neocomplcache_sources_list.python = [
\   "buffer_complete",
\   "filename_complete",
\   "dictionary_complete",
\   "tags_complete",
\]
" fix the . crash error
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = ''
let g:neocomplcache_omni_patterns.ruby = ''
" 自动补全的最小输入控制
let g:neocomplcache_auto_completion_start_length = 2
" use smartcase
let g:neocomplcache_enable_smart_case = 1
" set the skip auto_completion time
let g:neocomplcache_skip_auto_completion_time = 0.5
" use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1
" set minunum syntacx keyword length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" authocomplPop like behavior
let g:neocomplcache_enable_auto_select = 0
" when you input ho-a, neocomplecache will select candidate 'a'.
let g:neocomplcache_enable_quick_match = 1
" define keyword
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" TODO:按键绑定
ino <expr> <A-1> neocomplcache#start_manual_complete()
ino <expr> <A-g> neocomplcache#close_popup()
ino <expr> <C-g> neocomplcache#cancel_completion()
"ino <expr> <C-z> neocomplcache#undo_completion()
" enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.php = '[^ \t]->\h\w*\|\h\w*::'
"" TODO: python 补全 keyworo
"let g:neocomplcache_omni_patterns.python = '[^ \t]\.\h\w*\|\h\w*' 
"1}}}
" ------------------------------------------------------
" [ autopair配置 ]{{{1
" ------------------------------------------------------
" TODO: add new autopairs and buffer local pairs
" TODO: 按键优化, wrap/jump
" let g:AutoPairs = 
" let b:AUtoPairs = 
" key to toggle the auto_pair on/off
let g:AutoPairsShortcutToggle = "<leader>pt"
" key to jump the next closed pair
let g:AutoPairsShortcutJump = "<leader>pj"
" key to fast wrap the auto-pair
let g:AutoPairsShortcutFastWrap = "<leader>pp"
"1}}}
" --------------------------------------------------------------
"  [ python-mode-klen配置 ]{{{1
" --------------------------------------------------------------
let g:pymode = 1
" trim unused white spaces on save
let g:pymode_trim_whitespaces = 1
" pymode folding
let g:pymode_folding = 1
" enable pymode-motion
let g:pymode_motino = 1
" keys to view python doc
let g:pymode_doc_key = "<leader>qd"
" keys to run python
let g:pymode_run_key = "<leader>qr"
" quick key to break code
let g:pymode_breakpoint_bind = "<leader>qb"

" set pylint checker
let g:pymode_lint_checker = "pyflaskes,pep8,mccabe"
" disbale pymode-lint auto checker
let g:pymode_lint_on_write = 0
" disable usual errors check
let g:pymode_lint_select = ""
" not jump to the first error
let g:pymode_lint_jump = 0
" use quickfix for pylint check
let g:pymode_lint_hold = 0
" set the check output min and max height
let g:pymode_lint_minheight = 12
let g:pymode_lint_maxheight = 14
" disable the fold
let g:pymode_folding = 0
" rope complete keys
let g:pymode_rope_autocomplete_map = "<A-2>"
" key for pylint
nn <leader>ql :PyLint<CR>
" key for auto pep8 fix
nn <Leader>qa :PyLintAuto<CR>
" key for Pylint toggle
nn <Leader>qt :PyLintToggle<CR>
"1}}}
" --------------------------------------------------
"  [ cscope配置 ] {{{1
" --------------------------------------------------
" TODO: read doc and start to use
if has("cscope")
    set csprg=/usr/bin/cscope
    set nocsverb
    if filereadable("./cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
    " 设置是否使用quickfix
    "set csqf=s+,g+,d-,c+,t+,e+,f-,i-
    set csqf=s+,g-,d-,c-,t-,e-,f-,i-
    " 设置文件查找顺序
    set csto=0
    " 设置是否使用tags文件
    "set cst
    nmap <A-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-2>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-2>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-2>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-2>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-2>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-2>i :scs find i <C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-2>d :scs find d <C-R>=expand("<cword>")<CR><CR>
endif
"1}}}
" ----------------------------------------------------------
"  [ evernote配置 ]{{{1
" TODO: try and conf and 优化
let g:evervim_devtoken='S=s240:U=1cd8982:E=146e15334f5:C=13f89a208f9:P=1cd:A=en-devtoken:V=2:H=a8cac25918a056c4e1b1243672ec7e76'
"1}}}
