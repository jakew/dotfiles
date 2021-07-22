#! /bin/bash 

# Tmuxinator auto-completions
source ~/.bin/tmuxinator.zsh

# tt either attaches to the current session if it exists, or creates one.
tt () { 
  if ! [ -z "$TMUX" ]; then 
    tmuxinator start $1 --not-attached && tmux switch -t $1; 
  else 
    tmux attach -t $1 || tmuxinator start $1; 
  fi 
}