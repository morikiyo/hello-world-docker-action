#!/usr/bin/env bash

set -eux

echo 'in GITHUB_WORKSPACE'
echo $GITHUB_WORKSPACE
ls $GITHUB_WORKSPACE

echo 'in GITHUB_ACTION_PATH'
echo $GITHUB_ACTION_PATH
ls $GITHUB_ACTION_PATH

echo 'which?'
which ruby

echo 'exec action'
cd /action
ls .
bundle exec ruby ./hello.rb $1
# ruby ./hello.rb $1
