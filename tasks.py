# -*- coding: utf-8 -*-

import sys
import logging
from os import path
from datetime import datetime

from invoke import task, run


DEBUG = os.environ.get('HR_DEBUG', False)
# project base dir
BASE_DIR = path.dirname(path.realpath(__file__))
# logging config
logging.basicConfig(stream=sys.stdout,
                    level=logging.INFO)


def now_str():
    fmt = '%Y%m%d%H%M%S'
    return datetime.strftime(datetime.now(), fmt)


def path_exists(path_str):
    return path.exists(path.expanduser(path_str))


def run_cmd(cmd):
    if DEBUG:
        logging.info(cmd)
    else:
        run_cmd(cmd)


@task
def link(ctx):
    u"""install vim config"""
    vimrc_cmd = "ln -s {pwd}/vimrc ~/.vimrc".format(pwd=BASE_DIR)
    run_cmd(vimrc_cmd)

    vim_cmd = "ln -s {pwd}/vim ~/.vim".format(pwd=BASE_DIR)
    run_cmd(vim_cmd)


@task
def bak(ctx):
    u"""backup old config"""
    if path_exists("~/.vimrc"):
        cmd = "mv ~/.vimrc ~/.vimrc.bak.{date}".format(date=now_str())
        run_cmd(cmd)

    if path_exists("~/.vim"):
        cmd = "mv ~/.vim ~/.vim.bak.{date}".format(date=now_str())
        run_cmd(cmd)


@task
def rm(ctx):
    u"""remove old config"""
    if path_exists("~/.vimrc"):
        cmd = "rm ~/.vimrc"
        run_cmd(cmd)

    if path_exists("~/.vim"):
        cmd = "rm -rf ~/.vim"
        run_cmd(cmd)


@task
def plugin(ctx):
    u"""install plugin"""
    run_cmd("git submodule update --init --recursive")
    run_cmd("vim +PluginInstall +qall")
    run_cmd("cd vim/bundle/YouCompleteMe && ./install.py")


@task
def install(ctx, backup=False):
    if backup:
        bak(ctx)
    else:
        rm(ctx)

    link(ctx)
    plugin(ctx)
