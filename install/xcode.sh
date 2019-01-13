#!/bin/sh

echo "› Install xcode-install"

sudo gem install xcode-install

echo "› Installing Xcode"

xcversion update
xcversion install 10.1

echo "› Installing Command Line Tools"

xcode-select --install