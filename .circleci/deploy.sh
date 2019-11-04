#!/usr/bin/env bash

set -e
git config --global user.email $(git --no-pager show -s --format='%ae' HEAD)
git config --global user.name $CIRCLE_USERNAME

git add -f .
git commit -m ":rocket: Deploy #$CIRCLE_BUILD_NUM from CircleCI [ci skip]" || true
git push -f origin master
