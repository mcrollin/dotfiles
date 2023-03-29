#!/bin/sh

echo "› Updating brew"

if test ! "$( command -v brew )"; then
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# Brewfile path
BREWFILE="$(dirname "$0")/../Brewfile"

# install kegs using https://github.com/Homebrew/homebrew-bundle
brew bundle dump --force --file=$BREWFILE