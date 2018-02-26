#! /bin/bash

dotfiles=(
gitconfig
gitmessage
tmux.conf
zshrc
vimrc
)

fancy_echo "Symlinking dotfiles"
for i in ${dotfiles[@]} ; do
  ln -s ~/.dotfiles/$i ~/.$i
done
