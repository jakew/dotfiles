#! /bin/bash

# Install Homebrew (Visit brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install the Hyper terminal
brew cask install hyper
ln -s ~/.dotfiles/hyper.js ~/.hyper.js

# Install the latest ZSH and set it as the default.
brew install zsh
chsh -s /bin/zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
ln -s ~/.dotfiles/p10k.zsh ~/.p10k.zsh

# ZSH Highlighting
brew install zsh-syntax-highlighting

# Install VIM 8
brew install vim
ln -s ~/.dotfiles/vimrc ~/.vimrc

# Install VIM-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim '+PlugInstall!' '+PlugUpdate!' '+qa!'

# Install CTags for better code navigation.
brew install ctags

# The Silver Searcher
brew install the_silver_searcher

# Terminal Multiplex
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# Install Neofetch because I'm a nerd.
brew install neofetch
neofetch
