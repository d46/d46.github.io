#!/usr/bin/env sh
set -eo pipefail

git submodule add -b gh-pages -f http://github.com/d46/blog.git blog

# Commit changes
git add .
git commit --amend --no-edit
git push origin master -f
