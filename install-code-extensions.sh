#!/usr/bin/env bash

EXTENSIONS=(
  "akamud.vscode-theme-onedark"
  "akamud.vscode-theme-onelight"
  "axlan.multiline-find-and-replace"
  "ecmel.vscode-html-css"
  "esbenp.prettier-vscode"
  "flowtype.flow-for-vscode"
  "Fr43nk.seito-openfile"
  "mrmlnc.vscode-duplicate"
  "ms-vscode.atom-keybindings"
  "ronnidc.nunjucks"
  "ryu1kn.partial-diff"
  "sibiraj-s.vscode-scss-formatter"
  "streetsidesoftware.code-spell-checker"
  "taniarascia.new-moon-vscode"
  "Tyriar.sort-lines"
  "zhuangtongfa.Material-theme"
  "ziyasal.vscode-open-in-github"
)

for EXTENSION in ${EXTENSIONS[@]}; do
  code --install-extension $EXTENSION
done

echo "\nvs code extensions installed"