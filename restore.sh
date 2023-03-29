#!/bin/sh

set -e

echo "› Starting restore"

sh update.sh
sh restore/bootstrap.sh

echo "› All done 🙌"