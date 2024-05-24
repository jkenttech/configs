#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$PATH:$HOME/bin"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

if [ -f $HOME/.alias ]; then
  source $HOME/.alias
fi

PS1='[\u@\h \W]\$ '

cat $HOME/bin/tmuxCheatsheet.md
