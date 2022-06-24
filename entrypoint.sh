#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")"
echo 'in current dir'
ls .

echo 'in GITHUB_WORKSPACE'
echo $GITHUB_WORKSPACE
ls $GITHUB_WORKSPACE

echo 'in HOME'
echo $HOME
ls $HOME

echo 'which?'
which ruby

echo 'exec action'
bundle exec ruby ./hello.rb $1
# ruby ./hello.rb $1
