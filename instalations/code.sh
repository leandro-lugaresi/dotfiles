#!/bin/sh
if test "$(which code)"; then
  if [ "$(uname -s)" = "Darwin" ]; then
    VSCODE_HOME="$HOME/Library/Application Support/Code"
  else
    VSCODE_HOME="$HOME/.config/Code"
  fi

  ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
  ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
  ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

  # from `code --list-extensions`
  modules="
CoenraadS.bracket-pair-colorizer
EditorConfig.EditorConfig
HookyQR.beautify
PeterJausovec.vscode-docker
be5invis.toml
esbenp.prettier-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
foxundermoon.shell-format
patbenatar.advanced-new-file
timonwong.shellcheck
eamodio.gitlens
WakaTime.vscode-wakatime
dracula-theme.theme-dracula
max-ss.cyberpunk
neongenesisx.neongenesis
shyykoserhiy.vscode-spotify
ms-vsliveshare.vsliveshare-pack
ms-vscode.go
"
  for module in $modules; do
    code --install-extension "$module" || true
  done
fi
