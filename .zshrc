# Check if anything installed
if ! type exa > /dev/null 2>&1; then
    echo "ZSH: For enhanced view of ls, install \e[1;31mexa\e[0m package"
fi

# Oh My zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


# Settings
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13


# Plugins
plugins=(git)


# Configuration
source $ZSH/oh-my-zsh.sh
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR="nano"
export ARCHFLAGS="-arch $(uname -m)"


# Aliases
unalias -m '*'

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

l() {
    if [ "$#" -eq 0 ]; then
        exa --tree --icons --color=always -L 2
    else
        exa --tree --icons --color=always -L $1
    fi
}