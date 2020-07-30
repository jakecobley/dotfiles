################################################################################
# ZSH & OH MY ZSH Configuration
################################################################################

export ZSH="/home/jcobley/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Standard plugins can be found in `~/.oh-my-zsh/plugins/*`.
# Custom plugins may be added to `~/.oh-my-zsh/custom/plugins/`.
# Example format: plugins=(rails git textmate ruby lighthouse).
# NOTE: Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

################################################################################
# User Configuration
################################################################################

# Hide username and hostname from within the powerline.
DEFAULT_USER=$USER

# Auto-launching `ssh-agent`.
# @see: https://help.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

# Linux Brew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

################################################################################
# Aliases
#
# Set personal aliases, overriding those provided by oh-my-zsh libraries,
# plugins, and themes. Aliases can be placed here, although oh-my-zsh users are
# encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# @example
#
#   alias zshconfig="mate ~/.zshrc"
#   alias ohmyzsh="mate ~/.oh-my-zsh"
################################################################################

alias open=explorer.exe
