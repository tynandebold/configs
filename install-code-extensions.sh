#!/usr/bin/env bash

EXTENSIONS=(
  "akamud.vscode-theme-onedark"
  "akamud.vscode-theme-onelight"
  "alefragnani.Bookmarks"
  "eamodio.gitlens"
  "ecmel.vscode-html-css"
  "esbenp.prettier-vscode"
  "flowtype.flow-for-vscode"
  "foxundermoon.shell-format"
  "Fr43nk.seito-openfile"
  "joaomoreno.github-sharp-theme"
  "jpoissonnier.vscode-styled-components"
  "mauve.terraform"
  "mikestead.dotenv"
  "mrmlnc.vscode-duplicate"
  "ms-vscode.atom-keybindings"
  "okitavera.vscode-nunjucks-formatter"
  "Prisma.vscode-graphql"
  "qinjia.seti-icons"
  "RobbOwen.synthwave-vscode"
  "ronnidc.nunjucks"
  "ryu1kn.partial-diff"
  "sibiraj-s.vscode-scss-formatter"
  "streetsidesoftware.code-spell-checker"
  "taniarascia.new-moon-vscode"
  "tombonnike.vscode-status-bar-format-toggle"
  "Tyriar.sort-lines"
  "vscode-icons-team.vscode-icons"
  "whtouche.vscode-js-console-utils"
  "zhuangtongfa.material-theme"
  "ziyasal.vscode-open-in-github"
)

for EXTENSION in ${EXTENSIONS[@]}; do
  code --install-extension $EXTENSION
done

printf "\ndone installing vs code extensions"
