#!/bin/bash

current_branch=$(git branch --show-current)
git branch temp-branch
git checkout --orphan new-branch
git add -A
git commit -m ":blush:"
git checkout "$current_branch"
git reset --hard new-branch
git branch -D new-branch
git push origin +"$current_branch"
