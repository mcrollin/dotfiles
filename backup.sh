#!/bin/sh

set -e

echo "› Starting restore"

sh update.sh
sh backup/bootstrap.sh

echo "› All done 🙌"