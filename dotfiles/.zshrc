################################################################################
# ZSH & OH MY ZSH Configuration
################################################################################

export ZSH="/Users/jakecobley/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Standard plugins can be found in `~/.oh-my-zsh/plugins/*`.
# Custom plugins may be added to `~/.oh-my-zsh/custom/plugins/`.
# Example format: `plugins=(rails git textmate ruby lighthouse)`.
# NOTE: Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

################################################################################
# User Configuration
################################################################################

# Fix HyperJS `%` character.
unsetopt PROMPT_SP

# Hide username and hostname from within the powerline.
DEFAULT_USER=$USER
prompt_context() {}

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
