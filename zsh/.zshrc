if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Check if anything installed
if ! type eza > /dev/null 2>&1; then
    echo "ZSH: For enhanced view of ls, install \e[1;31meza\e[0m package"
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


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
        eza --tree --icons=always --hyperlink --color=always -aL 2
    else
        eza --tree --icons=always --hyperlink --color=always -aL $1
    fi
}

ll() {
    if [ "$#" -eq 0 ]; then
        eza --tree --icons=always --hyperlink --color=always -aL 2 | less
    else
        eza --tree --icons=always --hyperlink --color=always -aL $1 | less
    fi
}

alias gcl="git clone"
alias grm="git remote"
alias gi="git init"
alias gst="git status"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate --all"
alias glf="git log --graph --decorate --all"
alias grfl="git reflog"
alias grb="git rebase"
alias gri="git rebase -i"
alias ga="git add"
alias gaa="git add -A"
alias gr="git reset"
alias grh="git reset --hard"
alias gcmsg="git commit -m"
alias gcmsga="git commit --amend -m"
alias gsc="git switch -c"
alias gsw="git switch"
alias gb="git branch"
alias gpl="git pull"
alias gplo="git pull origin"
alias gplom="git pull origin main"
alias gploms="git pull origin master"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin main"
alias gpoms="git push origin master"
alias gpfo="git push --force-with-lease origin"
alias gpfom="git push origin main --force-with-lease"
alias gpfoms="git push origin master --force-with-lease"
alias gc="git checkout"
alias gsh="git stash"
alias gshp="git stash pop"

alias _="sudo"
alias __="sudo su"
alias tl="java -jar ~/Загрузки/TLauncher.v10/TLauncher.jar"


# Variables
export dev="/home/tolstovrob/Документы/dev"
export ssu="/home/tolstovrob/Документы/ssu"
export docs="/home/tolstovrob/Документы/docs"
export clubs="/home/tolstovrob/Документы/clubs"
export tutors="/home/tolstovrob/Документы/tutors"
export lectures="/home/tolstovrob/Документы/lectures"


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=/home/$USER/.cargo/bin:/home/$USER/.local/bin:$PATH
