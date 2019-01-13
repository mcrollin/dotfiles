#!/bin/sh

echo "› Starting bootstrap"

set -e

[[ -e ~/.dotfiles ]] || git clone https://github.com/mcrollin/dotfiles ~/.dotfiles
pushd ~/.dotfiles > /dev/null

echo "› Retrieving last dotfile version"

git checkout master || echo
git pull --rebase origin master || echo

sh install/install.sh

popd > /dev/null

echo "› All done 🙌"