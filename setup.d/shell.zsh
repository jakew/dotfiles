# Symlink our Zsh file
ln -sf ~/.dotfiles/zshrc ~/.zshrc

# Install Oh-My-ZSH
[ -d ~/.oh-my-zsh ] || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
ibrew install romkatv/powerlevel10k/powerlevel10k
ln -sf ~/.dotfiles/p10k.zsh ~/.p10k.zsh

# ZSH Highlighting
ibrew install zsh-syntax-highlighting
[ -d ~/.oh-my-zsh/custom ] || git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions