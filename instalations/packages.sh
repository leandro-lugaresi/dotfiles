#!/bin/bash

if ! (($(which yay >/dev/null 2>&1))); then
    sudo pacman -S yay
fi
packages="
spotify
spotify-tui
spotifyd
vlc
wget
docker
docker-compose
shellcheck
visual-studio-code-bin
go
hub
alacritty
vim
neovim
tmux
fish
diff-so-fancy
fzf
bat
exa
fd
xclip
chromium-widevine
snapd
peek
rlwrap
github-cli
rofi
i3-gaps
i3status
network-manager-applet
polybar
compton
compton-conf
nitrogen
slop
wmctrl
lxappearance
xsettingsd
i3lock-fancy-git
"

for pkg in $packages; do
    yay -S --needed --noconfirm --noredownload "$pkg"
done

sudo usermod -aG docker "$USER"
sudo systemctl enable docker
