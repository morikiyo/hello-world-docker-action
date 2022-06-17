#!/bin/sh

echo 'in WORKSPACE'
ls $GITHUB_WORKSPACE

echo 'exec action'
cd /action && bundle exec entorypoint.rb $1
