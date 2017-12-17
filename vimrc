"" ------------------------------------------------------------------------
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

if has('gui_macvim')
    set macmeta
endif

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manager vundle, requried
Plugin 'gmarik/Vundle.vim'

" nertree
Plugin 'scrooloose/nerdtree'
Plugin 'mihaifm/vimpanel'

" vim-doc 中文
Plugin 'foursking/vim-doc-cn'
" vim font size
Plugin 'drmikehenry/vim-fontsize'

" vim colorschemes主题
Plugin 'flazz/vim-colorschemes'

" vim session manager
Plugin 'tpope/vim-obsession'
"Plugin 'dhruvasagar/vim-prosession'

" vim tasks agenda
Plugin 'dhruvasagar/vim-dotoo'
Plugin 'jceb/vim-orgmode'

" unittest for vim-script
Plugin 'h1mesuke/vim-unittest'
" BDD-test for vim-script
Plugin 'kana/vim-vspec'

" tagbar
Plugin 'majutsushi/tagbar'

" ctrlp. quick file-opener
Plugin 'ctrlpvim/ctrlp.vim'
" unite quick file/buffer explorer
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/vimfiler.vim'

Plugin 'csliu/a.vim'
" load error!
" Plugin 'kakkyz81/evervim'
Plugin 'tpope/vim-surround'
Plugin 'EasyMotion'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-scriptease'
Plugin 'mattn/emmet-vim'
"Plugin 'css-color-preview'
Plugin 'acx0/Conque-Shell'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'

" lisp config
Plugin 'kovisoft/slimv'
Plugin 'kovisoft/paredit'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'tpope/vim-fugitive'
"Plugin 'minibufexplorerpp'
Plugin 'skammer/vim-css-color'
Plugin 'nerdtree-execute'
Plugin 'mortonfox/nerdtree-iterm'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'c.vim'
Plugin 'genutils'
Plugin 'grep.vim'
Plugin 'mileszs/ack.vim'
Plugin 'TaskList.vim'

" elixir plugin
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
" TODO
Plugin 'neomake/neomake'
Plugin 'c-brenn/phoenix.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'ludovicchabant/vim-gutentags'

" rst plugin
Plugin 'Rykka/riv.vim'
" markdown plugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Plugin 'fatih/vim-go'
" go get github.com/nsf/gocode
" error with other go plugin ??
" Plugin 'Blackrush/vim-gocode'
Plugin 'lepture/vim-jinja'
Plugin 'bolasblack/gtrans.vim'
Plugin 'UltiSnips'
Plugin 'matchit.zip'
Plugin 'winmanager'
Plugin 'jiangmiao/auto-pairs'
Plugin 'TagmaTasks'
"Plugin 'neocomplcache'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'lookupfile'

" python
Plugin 'Python-mode-klen'
Plugin 'jmcantrell/vim-virtualenv'

" fix sudo vim error
Plugin 'sudo.vim'

Plugin 'CmdlineComplete'
Plugin 'hughbien/md-vim'

" 中文文档
" Plugin 'vimcdoc'

" airline, instead of powerline
Plugin 'bling/vim-airline'

" draw in vim
Plugin 'DrawIt'

" generate doxy doc
Plugin 'DoxygenToolkit.vim'

" compare with minibufexplorer
"Plugin 'bufexplorer'

" sublime-text multiple cursor support
Plugin 'vim-multiple-cursors'

" program syntax checker, support many language
Plugin 'scrooloose/syntastic'

" view doc, TODO
" Plugin 'powerman/vim-plugin-viewdoc'

" c IDE? TODO
Plugin 'fanhed/omnicxx'

" vim shell
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc'

" android development
Plugin 'adt.vim'

" golang
" code jump
Plugin 'dgryski/vim-godef'
" gocode for auto-complete
Plugin 'Blackrush/vim-gocode'

" ruby on rails
Plugin 'rails.vim'

" erlang
Plugin 'Vimerl'

" lua plugins
Plugin 'vim-misc'
Plugin 'lua.vim'

" show indent level
" Plugin 'Yggdroot/indentLine'

" javascript/nodjs
Plugin 'jelera/vim-javascript-syntax'
Plugin 'JavaScript-Indent'
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'gkz/vim-ls'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
" typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
" scala
Plugin 'derekwyatt/vim-scala'
"Plugin 'ensime/ensime-vim'

Plugin 'megaannum/self'
Plugin 'megaannum/forms' 
Plugin 'aemoncannon/ensime'
Plugin 'megaannum/vimside'  

" buffer explorers
Plugin 'jlanzarotta/bufexplorer'

" plantuml
Plugin 'aklt/plantuml-syntax'


" supertab 试用
" Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" load my vim conf
let $VIMFILES=$HOME.'/.vim'
so $VIMFILES/conf/main.vim
