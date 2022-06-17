#!/bin/sh

echo 'entorypoint as hello'
pwd
echo $GITHUB_ACTION_PATH
ls
ls $GITHUB_ACTION_PATH
#bundle exec entorypoint.rb $1
