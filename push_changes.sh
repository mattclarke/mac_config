#!/bin/sh
brew list > brew_list.txt
git add -u
git commit -m "Updated..."
git push

