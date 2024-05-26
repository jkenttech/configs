# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BIN_USR="$HOME/bin"
BIN_JAVA="$BIN_USR/java-21.0.3/bin"
BIN_VSCODE="$BIN_USR/vscode/bin"
PATH="$PATH:$BIN_USR:$BIN_JAVA:$BIN_VSCODE"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

if [ -f $HOME/.alias ]; then
  source $HOME/.alias
fi

if [ -f $HOME/.alias_local ]; then
  source $HOME/.alias_local
fi

#PS1='[\u@\h \W]\$ '
eval "$(oh-my-posh init bash --config /home/jake/.themes/posh/hul10.omp.json)"

cat $HOME/bin/tmuxCheatsheet.md
