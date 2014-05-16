" ------------------------------------------------------------------------
" File: .vimrc
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 主配置文件
" Last Modified: 2013-07-02
" -------------------------------------------------------------------------
"required
set nocompatible
be mswin
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manager vundle, requried
Plugin 'gmarik/Vundle.vim'

" nertree
Plugin 'scrooloose/nerdtree'

" tagbar
Plugin 'majutsushi/tagbar'

Plugin 'csliu/a.vim'
" load error!
" Plugin 'kakkyz81/evervim'
Plugin 'tpope/vim-surround'
Plugin 'EasyMotion'
Plugin 'mattn/emmet-vim'
Plugin 'css-color-preview'
Plugin 'acx0/Conque-Shell'
Plugin 'tpope/vim-fugitive'
Plugin 'minibufexplorerpp'
Plugin 'skammer/vim-css-color'
Plugin 'nerdtree-execute'
Plugin 'mortonfox/nerdtree-iterm'
Plugin 'scrooloose/nerdcommenter'
Plugin 'c.vim'
Plugin 'genutils'
Plugin 'grep.vim'
Plugin 'TaskList.vim'
Plugin 'Rykka/riv.vim'
" Plugin 'fatih/vim-go'
" go get github.com/nsf/gocode
" error with other go plugin ??
" Plugin 'Blackrush/vim-gocode'
Plugin 'jinja'
Plugin 'bolasblack/gtrans.vim'
Plugin 'UltiSnips'
Plugin 'matchit.zip'
Plugin 'winmanager'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Python-mode-klen'
Plugin 'TagmaTasks'
Plugin 'neocomplcache'
Plugin 'lookupfile'

" fix sudo vim error
Plugin 'sudo.vim'

Plugin 'CmdlineComplete'
Plugin 'hughbien/md-vim'

" 中文文档
Plugin 'vimcdoc'

" airline, instead of powerline
Plugin 'bling/vim-airline'

" draw in vim
Plugin 'DrawIt'

" generate doxy doc
Plugin 'DoxygenToolkit.vim'

" compare with minibufexplorer
Plugin 'bufexplorer'

" sublime-text multiple cursor support
Plugin 'vim-multiple-cursors'

" program syntax checker, support many language
" TODO:
Plugin 'scrooloose/syntastic'

" view doc, TODO
Plugin 'powerman/vim-plugin-viwdoc'
Plugin "tycheng/RefVim"

" c IDE? TODO
Plugin 'fanhed/omnicxx'

call vundle#end()
filetype plugin indent on

" load my vim conf
let $VIMFILES=$HOME.'/.vim'
so $VIMFILES/conf/main.vim
