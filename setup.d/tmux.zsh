# Terminal Multiplex
ibrew install tmux tmuxinator

tpm_dir=~/.tmux/plugins/tpm
[ -d $tmp_dir ] || git clone https://github.com/tmux-plugins/tpm $tpm_dir
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
