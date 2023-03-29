#!/bin/sh

echo "› Starting backup"

CURRENT_FOLDER="$(dirname "$0")"

sh $CURRENT_FOLDER/brew.sh
sh $CURRENT_FOLDER/mackup.sh