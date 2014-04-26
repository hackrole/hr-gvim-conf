#!/usr/bin/bash

# init vundle submodlue for plugin manager
git submodule init
git submodule update

# install the vim conf
CWD=`pwd`
if [ -e "~/.vim" ];then
    mv -f ~/.vim ~/.vim.bak
fi
if [ -e "~/.vimrc" ]; then
    mv -f ~/.vimrc ~/.vimrc.bak
fi
ln -s ${CWD}/vimrc ~/.vimrc
ln -s ${CWD}/vim ~/.vim

# install plugins
gvim +PluginInstall +qall


