# new-gvim-conf

new vim conf use vundle to manage plugin

need vim version 7.4 or higher.

## how to init

1) clone到本地

    git clone git@github.com:hackrole/hr-gvim-conf.git

2) init vender submodule

    cd hr-gvim-conf
    git submodule update --init --recursive

3) link config file

    ln -s `pwd`/vim ~/.vim
    ln -s `pwd`/vimrc ~/.vimrc

4) install plugin

    gvim +PluginInstall +qall
