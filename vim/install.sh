#!/bin/sh
curl -fLo "$DOTFILES/vim/vim.symlink/autoload/plug.vim" --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall

if which neovim >/dev/null 2>&1; then
	curl -fLo "$DOTFILES/vim/vim.symlink/autoload/plug.vim" --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir -p ~/.config/nvim/
	ln -sf "$DOTFILES/vim/vim.symlink/vimrc.symlink" ~/.config/nvim/init.vim
	nvim +PlugInstall
fi
