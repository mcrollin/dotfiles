#!/bin/sh

echo "› Starting update"

CURRENT_FOLDER="$(dirname "$0")"

sh $CURRENT_FOLDER/brew.sh
sh $CURRENT_FOLDER/mackup.sh