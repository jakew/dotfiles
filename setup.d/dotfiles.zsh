# dotfiles is the list of files that need to be symlinked
dotfiles=(
tmux.conf
zshrc
vimrc
hyper.js
p10k.zsh
)

echo "Symlinking dotfiles"
for i in ${dotfiles[@]} ; do
  ln -sf ~/.dotfiles/$i ~/.$i
done
