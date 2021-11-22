# End the script on first failure.
set -e
set -x

# Setup assumes the git repostiory is located at ~/.dotfiles

# Brew is the macOS package manager.
# Required for the setup files to use brew.
if ! type brew > /dev/null; then
    # Install Homebrew (Visit brew.sh)
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


    # Tip: use `brew list python@3.9 &>/dev/null || brew install python@3.9;` to ensure the package is only installed once.
fi

source ~/.dotfiles/setup-fns.zsh

# Update brew.
brew update || exit 1

# Read setup files
for file in ~/.dotfiles/setup.d/*; do
  source $file; 
done

neofetch
