#!/bin/sh

set -e

[[ -e ~/.dotfiles ]] || git clone https://github.com/mcrollin/dotfiles ~/.dotfiles
pushd ~/.dotfiles > /dev/null

popd > /dev/null

echo "All done 👍"