if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Check if anything installed
if ! type exa > /dev/null 2>&1; then
    echo "ZSH: For enhanced view of ls, install \e[1;31mexa\e[0m package"
fi

# Oh My zsh config
export ZSH="$HOME/.oh-my-zsh"

# Load theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

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

alias gi="git init"
alias gst="git status"
alias gd="git diff"
alias glg="git log --oneline --graph --decorate --all"
alias glf="git log --graph --decorate --all"
alias gr="git rebase"
alias gri="git rebase -i"
alias ga="git add"
alias gaa="git add -A"
alias gcmsg="git commit -m"
alias gcmsga="git commit --amend -m"
alias gsc="git switch -c"
alias gsw="git switch"
alias gb="git branch"
alias gl="git pull"
alias glo="git pull origin"
alias gp="git push"
alias gpo="git push origin"
alias gc="git checkout"

alias _="sudo"
alias __="sudo su"
alias tl="java -jar ~/Загрузки/TLauncher.v10/TLauncher.jar"