#!/bin/sh

echo 'in WORKSPACE'
ls $GITHUB_WORKSPACE

echo 'which?'
which ruby

echo 'exec action'
cd /action
ls .
# bundle exec ruby ./helo.rb $1
ruby ./hello.rb $1
