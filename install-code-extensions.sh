#!/usr/bin/env bash

EXTENSIONS=(
  "akamud.vscode-theme-onedark"
  "akamud.vscode-theme-onelight"
  "axlan.multiline-find-and-replace"
  "ecmel.vscode-html-css"
  "esbenp.prettier-vscode"
  "flowtype.flow-for-vscode"
  "mrmlnc.vscode-duplicate"
  "ms-vscode.atom-keybindings"
  "ronnidc.nunjucks"
  "ryu1kn.partial-diff"
  "sibiraj-s.vscode-scss-formatter"
  "taniarascia.new-moon-vscode"
  "Tyriar.sort-lines"
  "zhuangtongfa.Material-theme"
)

for EXTENSION in ${EXTENSIONS[@]}; do
  code --install-extension $EXTENSION
done

echo "\nvs code extensions installed"