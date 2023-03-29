#!/bin/sh

echo "› Backing up mackup"

# https://github.com/lra/mackup
yes | mackup backup ; yes | mackup uninstall