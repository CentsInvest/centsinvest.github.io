#!/bin/bash

# get current html file name
old=$(ls *.html)

# generate new randon number
rand=$RANDOM

# create new file name
new=$rand".html"

# rename file
mv $old $new

# add changes to git
git add $old $new

# add commit message 
git commit -m "BASH: HTML filename autoupdate"

# push to remote git repository
git push origin main
