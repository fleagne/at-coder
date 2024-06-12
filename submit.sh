#!/bin/sh

# https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_p

DIR=`pwd`
URL=https://atcoder.jp/${DIR#*/*/*/*/*/}

# Python 3.11.4
oj submit $URL main.py -l 5055 -y

# PyPy 3.10-v7.3.12
# oj submit $URL main.py --guess-python-interpreter pypy -y

exit 0