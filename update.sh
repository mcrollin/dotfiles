#!/bin/sh

echo "› Retrieving last dotfile version"

git checkout master || echo
git pull --rebase origin master || echo