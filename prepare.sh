#!/bin/sh

# https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_p

URL=$1
DIR=~/git/atcoder-python/${URL#*/*/*/}

echo ""
echo "--------------------------------------------------"
echo "make directory:" $DIR
mkdir -p $DIR
echo ""
echo "cd directory:" $DIR
cd $DIR
echo ""
echo "prepare problem from:" $URL
oj-prepare $URL
echo ""
echo "Done!"
echo "Please move folder:"
echo "cd" $DIR
echo "--------------------------------------------------"
echo ""

exit 0