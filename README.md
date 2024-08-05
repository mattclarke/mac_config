# mac_config
Dotfiles etc. for my mac

## Restoring
```
ln -s /path-to-this-repo/init.lua ~/.config/nvim/.
ln -s /path-to-this-repo/zshrc ~/.zshrc
ln -s /path-to-this-repo/bash_profile ~/.bash_profile
ln -s /path-to-this-repo/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
```
The iterm2 colour scheme will have to be done manually.

## Updating
Occasionally do:
```
sh push_changes.sh 
```

