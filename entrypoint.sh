#!/bin/sh

echo 'in WORKSPACE'
ls $GITHUB_WORKSPACE

echo 'exec action'
cd /action
ls .
bundle exec ruby ./helo.rb $1
