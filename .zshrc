#
# Configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
    source ${ZIM_HOME}/init.zsh
fi
# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="/home/elkorn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin:$(yarn global bin)"
export GRADLE_USER_HOME="$HOME/.gradle"

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias diff='diff --color'

calc () { awk "BEGIN { print $* }" }

# Enable running new termite window in cwd.
if [[ $TERM == xterm-termite ]]; then
    . /etc/profile.d/vte.sh
    __vte_osc7
fi

eval
    fuck () {
        TF_PREVIOUS=$(fc -ln -1 | tail -n 1);
        TF_CMD=$(
            TF_ALIAS=fuck
            TF_SHELL_ALIASES=$(alias)
            PYTHONIOENCODING=utf-8
            thefuck $TF_PREVIOUS THEFUCK_ARGUMENT_PLACEHOLDER $*
        ) && eval $TF_CMD;
        test -n "$TF_CMD" && print -s $TF_CMD
    }
