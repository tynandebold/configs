#!/usr/bin/env bash

EXTENSIONS=(
  "akamud.vscode-theme-onedark"
  "akamud.vscode-theme-onelight"
  "alefragnani.Bookmarks"
  "axlan.multiline-find-and-replace"
  "dbaeumer.vscode-eslint"
  "eamodio.gitlens"
  "ecmel.vscode-html-css"
  "esbenp.prettier-vscode"
  "flowtype.flow-for-vscode"
  "formulahendry.auto-rename-tag"
  "foxundermoon.shell-format"
  "Fr43nk.seito-openfile"
  "GitHub.github-vscode-theme"
  "GraphQL.vscode-graphql"
  "hashicorp.terraform"
  "idleberg.applescript"
  "joaomoreno.github-sharp-theme"
  "jpoissonnier.vscode-styled-components"
  "mgmcdermott.vscode-language-babel"
  "mikestead.dotenv"
  "mrmlnc.vscode-duplicate"
  "ms-vscode.atom-keybindings"
  "okitavera.vscode-nunjucks-formatter"
  "qinjia.seti-icons"
  "RobbOwen.synthwave-vscode"
  "ronnidc.nunjucks"
  "ryu1kn.partial-diff"
  "sibiraj-s.vscode-scss-formatter"
  "streetsidesoftware.code-spell-checker"
  "taniarascia.new-moon-vscode"
  "tombonnike.vscode-status-bar-format-toggle"
  "Tyriar.sort-lines"
  "VisualStudioExptTeam.vscodeintellicode"
  "vscode-icons-team.vscode-icons"
  "whtouche.vscode-js-console-utils"
  "wwm.better-align"
  "zhuangtongfa.material-theme"
  "ziyasal.vscode-open-in-github"
)

for EXTENSION in ${EXTENSIONS[@]}; do
  code --install-extension $EXTENSION
done

printf "\ndone installing vs code extensions"
