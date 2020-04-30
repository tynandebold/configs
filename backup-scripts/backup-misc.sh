#!/bin/bash

# transmit
cp -R ~/Library/Application\ Support/Transmit/Favorites/ ~/Google\ Drive/Backup/transmit/

# User keychain
cp -R ~/Library/Keychains/ ~/Google\ Drive/Backup/keychains/

# vscode
# cp -R ~/.vscode ~/Google\ Drive/Backup/vscode/
cp -R ~/Library/Application\ Support/Code/User/ ~/Google\ Drive/Backup/vscode-user-prefs

# Sequel Pro
cp ~/Library/Application\ Support/Sequel\ Pro/Data/Favorites.plist ~/Google\ Drive/Backup/sequel-pro/Favourites.plist
cp ~/Library/Preferences/com.sequelpro.SequelPro.plist ~/Google\ Drive/Backup/sequel-pro/com.sequelpro.SequelPro.plist
