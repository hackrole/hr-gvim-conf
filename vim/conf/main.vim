" ------------------------------------------------------------------------
" File: main.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 主配置文件
" Last Modified: 2013-07-02
" -------------------------------------------------------------------------

" --------------------------------------------------
" [分配置文件加载] {{{1
" --------------------------------------------------
" 加载设置选项 访问命令 \es
source $VIMFILES/conf/set.vim
" 加载按热键配置 访问命令 \eg
source $VIMFILES/conf/keyboard.vim
" 加载插件配置,插件对应热键定义在内 访问命令 \ed
source $VIMFILES/conf/plugin.vim
" 加载自定义命令 访问命令 \ec
source $VIMFILES/conf/command.vim
" 加载自定义函数 访问命令 \ef
source $VIMFILES/conf/function.vim
" 加载定义缩写 访问命令 \ea
source $VIMFILES/conf/ab.vim
" 1}}}
