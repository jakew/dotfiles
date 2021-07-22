# Install VIM 8
ibrew install vim
ln -sf ~/.dotfiles/vimrc ~/.vimrc

# Install VIM-Plug
[ -f ~/.vim/autoload/plug.vim ] || curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim '+PlugInstall!' '+PlugUpdate!' '+qa!'

# Install CTags for better code navigation.
ibrew install ctags