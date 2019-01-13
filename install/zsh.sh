#!/bin/sh

echo "› Installing zsh"

ZSH_PATH=$(which zsh)

if ! grep -q $ZSH_PATH '/etc/shells'; then
  echo $ZSH_PATH | sudo tee -a /etc/shells
fi

test "$(expr "$SHELL" : '.*/\(.*\)')" != "zsh" &&
	command -v chsh >/dev/null 2>&1 &&
	chsh -s "$ZSH_PATH" &&
	echo "› Set $("$ZSH_PATH" --version) at $ZSH_PATH as default shell"
