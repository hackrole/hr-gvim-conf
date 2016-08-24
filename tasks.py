# -*- coding: utf-8 -*-

import sys
import logging
from os import path
from datetime import datetime

from invoke import task, run


# project base dir
BASE_DIR = path.dirname(path.realpath(__file__))
# logging config
logging.basicConfig(stream=sys.stdout,
                    level=logging.INFO)


def now_str():
    fmt = '%Y%m%d%H%M%S'
    return datetime.strftime(datetime.now(), fmt)


@task
def link(ctx):
    u"""install vim config"""
    vimrc_cmd = "ln -s {pwd}/vimrc ~/.vimrc".format(pwd=BASE_DIR)
    run(vimrc_cmd)

    vim_cmd = "ln -s {pwd}/vim ~/.vim".format(pwd=BASE_DIR)
    run(vim_cmd)


@task
def backup(ctx):
    u"""backup old config"""
    if path.exists("~/.vimrc"):
        cmd = "mv ~/.vimrc ~/.vimrc.bak.{date}".format(date=now_str())
        run(cmd)

    if path.exists("~/.vim"):
        cmd = "mv ~/.vim ~/.vim.bak.{date}".format(date=now_str())
        run(cmd)


@task
def rm(ctx):
    u"""remove old config"""
    if path.exists("~/.vimrc"):
        cmd = "rm ~/.vimrc"
        run(cmd)

    if path.exists("~/.vim"):
        cmd = "rm -rf ~/.vim"
        run(cmd)


@task
def plugin(ctx):
    u"""install plugin"""
    run("git submodule update --init --recursive")
    run("vim +PluginInstall +qall")
    run("cd vim/bundle/YouCompleteMe && ./install.py")


@task
def install(ctx, backup=False):
    if backup:
        backup(ctx)
    else:
        rm(ctx)

    link(ctx)
    plugin(ctx)
