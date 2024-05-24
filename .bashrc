#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/.alias ]; then
  source $HOME/.alias
fi

PS1='[\u@\h \W]\$ '

PATH="$PATH:$HOME/bin"
