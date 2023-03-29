#!/bin/sh

echo "› Starting restore"

CURRENT_FOLDER="$(dirname "$0")"

sh $CURRENT_FOLDER/macos.sh
sh $CURRENT_FOLDER/software.sh
sh $CURRENT_FOLDER/brew.sh
sh $CURRENT_FOLDER/mackup.sh
