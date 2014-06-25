#!/usr/bin/env python
# encoding: utf-8

u"""
安装golang编辑环境需要的一些软件包.
需要先安装go,并配置和golang环境.
GOROOT
GOPATH
GOBIN
PATH

gocode: 代码不全
godef: 代码跳转
gotags: 配合tagbar的structs view
goimport: auto fmt
"""

from invoke import task, run


@task
def godef():
    run("go get code.google.com/p/rog-go/exp/cmd/godef")


@task
def gocode():
    run("go get github.com/nsf/gocode")


@task
def gotags():
    run("go get github.com/jstemmer/gotags")


@task
def goimports():
    run("go get github.com/bradfitz/goimports")


@task
def env():
    run("export http_proxy=127.0.0.1:8118")
    run("export https_proxy=127.0.0.1:8118")
    # TODO: ..


@task
def cmd():
    run("go get code.google.com/p/go.tools/cmd/...")


@task
def all():
    # TODO: ..
    pass
