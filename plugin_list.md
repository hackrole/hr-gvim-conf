# vim插件整理

- 这里主要列出用到的插件和插件的简单描述。
- 只保存在使用的插件，如果插件不再使用，应从此次删除。
- 分类暂时按照如下方式, 添加新插件注意放到对应分类下。
- 相似功能和功能互补的插件可以列到一起，方便查看.
- 如果已找到明显更好的替代品,也不应该在此列出被替代的插件，这里是vim插件列表, 而是整理个人需要的插件
- 内容较多，此文档将逐步完善,暂时未用到或用到较少的插件可先不做具体说明
- 文中难免有错误，即使发现即使修改

## 全局插件

如nerdtree/unite/denite这类全局通用的插件
这里依据功能分类

### plugin manager
用于插件管理

- gmarik/Vundle.vim
- Shougo/dein.vim
- junegunn/vim-plug

dein/vim-plug相对较新，支持异步高速下载和on-demand load

- [] change vundle to dein(first choise)/vim-plug

### file/file-tree manager
文件树插件, filter/hide/bookmark/many-file等

nerdtree not good at file handler.
vimfiler support many-file but need unite-plugin installed.
vimfiler not have bookmark, it depand on unite bookmark.

- scrooloose/nerdtree
- Shougo/vimfiler
- mihaifm/vimpanel

- [] vimpanel try
- [] vimfiler config/usage

### session/info manager

- tpope/vim-obsession

### project manager

- vim-projectionist

### tag manager

- tagbar(tag-list)
- vim-gutentags(tag file generate/manager)

### snippet plugin
- UltiSnips
- deoppet.nvim(dark power neo-snippet,not finish)
- neosnippet
- neosnippet-snippets

- [] choose one.

### completion

- deoplete.nvim
- YouCompleteMe

### lint/syntax checker
- syntastic

### workflow plugin
- unite/denite(workflow like helm in emacs)
- ctrlp(only file)

unite/denite like emacs helm, a plugin change your workflow.
denite is the new of unite, but still not complete.

- [] try to config and use unite/denite.
- [] remove ctrlp, use denite.

## editor插件
每个插件单独列出

主要列出帮助快捷编辑文件的插件,如easymotion/vim-surrond
这类插件比较通用，但是功能点比较小,一般专注于一个特定的编辑功能

### EasyMotion(<leader><leader>f/\/)

### vim-surround(csi/ds/..)

### vim-exchange

### nerdcommenter(<leader>c)
commenter plugins

### tabular
align text

- [] this is an amazing plugin, use it!!!

### auto-pairs
- auto-pairs

### indentLine
show indent level

## tool插件

完成特定任务或功能的插件，部分可以于全局插件冲突。
这里主要强调插件的专用性，专注完成一个特定任务，于其他插件或插件交集较小。
如: vim-dotoo/vim-shell/git/github

### task manager

- vim-dotoo
- TaskList.vim
- TagmaTasks

### git

- vim-fugitive

- [] choose one or two git-plugin to use

### grep

- grep.vim
- ack.vim

- [] grep may not needed as ack exists.
- [] define task.py for install ack auto.

### tanslation

- gtrans.vim

### powerline

- vim-airline

### shell

- vimshell
- vimproc

- [] may not need in nvim

### UML
- plantuml-syntax

## lang-ftpplugin插件

相对特定语言的插件, 如gocode/python-mode/rst-mode
此处将同一语言的插件列到一次

### elixir/erlang
- vim-elixir
- alchemist.vim
- phoenix.vim
- Vimerl

### lua
- vim-misc
- lua.vim

### javascript/nodejs/typescript
- tern_for_vim
- jelera/vim-javascript-syntax
- JavaScript-Indent
- marijnh/tern_for_vim
- othree/javascript-libraries-syntax.vim
- kchmck/vim-coffee-script
- gkz/vim-ls
- moll/vim-node
- digitaltoad/vim-jade
- leafgarland/typescript-vim
- Quramy/tsuquyomi

### rst/markdown
- riv.vim
- markdown
- md-vim

### golang
- vim-godef
- vim-gocode

### ruby/rails
- rails.vim

### python-mode
- Python-mode-klen
- vim-virtualenv

### c/c-plusplus
- a.vim
- omnicss

### java/android/scala
- adt.vim
- vim-scala
- ensime-vim
- megaannum/vimside
- megaannum/self
- megaannum/forms
- aemoncannon/ensime

### html/css/template

- emmet-vim(quickly to write html tag)
- css-color-preview(not preview well)
- vim-css-color
- vim-jinja

### org-mode
- vim-orgmode

## lib-plugin插件

一般用于提供帮助函数的插件，如: unittest/utils/misc

### vim-unittest/vim-vspec
library to write and run unittest/ftstest for vimscript

- [] learn this and vimscript

### vim-scriptease

a plugin for making vim plugins.

- pretty dump print
- reload without restart
- debug message
- measure runtime
- breakpoint

### vim-colorschemes

### genutils
provide functions for script developers.
provide many useful utility functions for buffer/windows/others

## others/misc 其他

一些不太适合放到其他分类下的插件，
如一些相对比较少用的tools插件，如drawIt/Droxy等
或者一些暂时不确定是否继续使用插件

### sudo.vim

### CmdlineComplete

### matchit.zip

### DrawIt


### vim-doc-cn

### vim-fontsize
add key mapping to adjust font-size.

- [] remove cmdline.vim key for font-resize.

## TOREMOE

Plugin 'acx0/Conque-Shell'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'DoxygenToolkit.vim'
