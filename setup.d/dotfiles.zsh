# dotfiles is the list of ifles that need to be 
dotfiles=(
tmux.conf
zshrc
vimrc
)

echo "Symlinking dotfiles"
for i in ${dotfiles[@]} ; do
  ln -sf ~/.dotfiles/$i ~/.$i
done
