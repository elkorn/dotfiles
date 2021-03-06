#
# ~/.bash_profile
#
[ -s "/home/elkorn/.nvm/nvm.sh" ] && . "/home/elkorn/.nvm/nvm.sh" # This loads nvm
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
. $HOME/.config/bash/sprunge.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.profile ]] && . ~/.profile
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
[[ -z $XDG_DATA_HOME ]] && export XDG_DATA_HOME=$HOME/.xdg/data
[[ -z $XDG_CONFIG_HOME ]] && export XDG_CONFIG_HOME=$HOME/.xdg/config

