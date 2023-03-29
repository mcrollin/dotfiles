#!/bin/sh

echo "› Installing brew"

if test ! "$( command -v brew )"; then
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Brewfile path
BREWFILE="$(dirname "$0")/../Brewfile"

# check for missing dependencies
brew bundle check --file=$BREWFILE

# install kegs using https://github.com/Homebrew/homebrew-bundle
brew bundle install --file=$BREWFILE

# Upgrade any already-installed formulae.
brew upgrade

brew doctor