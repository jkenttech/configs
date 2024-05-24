#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BIN_USR="$HOME/bin"
BIN_JAVA="$BIN_USR/java-21.0.3/bin"
PATH="$PATH:$BIN_USR:$BIN_JAVA"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

if [ -f $HOME/.alias ]; then
  source $HOME/.alias
fi

#PS1='[\u@\h \W]\$ '
eval "$(oh-my-posh init bash --config /home/jake/.themes/posh/agnosterplus.omp.json)"

cat $HOME/bin/tmuxCheatsheet.md
