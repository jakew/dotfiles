#! /bin/bash

# Install fonts for iTerm
cp ~/.dotfiles/fonts/* ~/Library/Fonts

# Install Homebrew (Visit brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install the latest ZSH and set it as the default.
brew install zsh
chsh -s /bin/zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install VIM 8
brew install vim --with-override-system-vi --with-python3
ln -s ~/.dotfiles/vimrc ~/.vimrc

# Install Grip for Markdown viewing
brew install grip

# Install VIM-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim '+PlugInstall!' '+PlugUpdate!' '+qa!'

# iTerm2 Preferences
ln -s ~/.dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# The Silver Searcher
brew install the_silver_searcher

# Terminal Multiplex
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# Install Neofetch because I'm a nerd.
brew install neofetch
neofetch
