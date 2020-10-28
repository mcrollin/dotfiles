#!/bin/sh

echo "› Installing Xcode"

xcodes update
xcodes install 12.0.1

echo "› Installing Command Line Tools"

xcode-select --install
