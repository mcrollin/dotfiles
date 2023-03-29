#!/bin/sh

echo "› Restoring mackup"

# https://github.com/lra/mackup
yes | mackup restore ; yes | mackup uninstall