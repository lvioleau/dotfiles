#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export VIMCONFIG=$XDG_CONFIG_HOME/nvim
export VIMDATA=$XDG_DATA_HOME/nvim

alias vim=nvim
alias vrc="nvim $VIMCONFIG/init.vim"
