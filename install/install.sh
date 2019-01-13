#!/bin/sh

echo "› Starting install"

CURRENT_FOLDER="$(dirname "$0")"

sh $CURRENT_FOLDER/macos.sh
sh $CURRENT_FOLDER/software.sh
sh $CURRENT_FOLDER/brew.sh
sh $CURRENT_FOLDER/zsh.sh
sh $CURRENT_FOLDER/xcode.sh
sh $CURRENT_FOLDER/mackup.sh

sudo gem install colorls
