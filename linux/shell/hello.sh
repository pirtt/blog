#!/bin/bash
# File   :hello.sh
# Author :nyhoo
#export LANG=zh_CN.UTF-8
export TEXTDOMAIN=hello
export TEXTDOMAINDIR=./locale
gettext -s "hello"
