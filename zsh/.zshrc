# Enable less color highlight
export LESS="-R"

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
unalias -m "*"

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

# Aliases

## Git
alias gi="git init"
alias gcl="git clone"
alias grm="git remote"
alias grmv="git remote -v"
alias grma="git remote add"
alias grmr="git remote remove"

alias gst="git status"
alias gl="git log --oneline --graph --decorate --all"
alias glf="git log --graph --decorate --all"
alias gll="git log --stat"
alias gld="git log --patch"

alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gcma="git commit --amend -m"

alias gco="git checkout"
alias gsw="git switch"
alias gsc="git switch -c"

alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbD="git branch -D"

alias gpl="git pull"
alias gplo="git pull origin"
alias gplm="git pull origin main"
alias gplms="git pull origin master"

alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin main"
alias gpoms="git push origin master"
alias gpf="git push --force-with-lease"
alias gpfo="git push --force-with-lease origin"
alias gpfom="git push origin main --force-with-lease"
alias gpfoms="git push origin master --force-with-lease"

alias gpF="git push --force"
alias gpFo="git push --force origin"
alias gpFom="git push origin main --force"
alias gpFoms="git push origin master --force"

alias gr="git reset"
alias grh="git reset --hard"
alias grs="git reset --soft"

alias grb="git rebase"
alias gri="git rebase -i"

alias grfl="git reflog"
alias gsh="git stash"
alias gshp="git stash pop"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsd="git stash drop"

alias gcln="git clean -fd"
alias gtag="git tag"
alias gtags="git tag -l"
alias gfetch="git fetch --all --prune"
alias gd="git diff"
alias gshow="git show"

alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias gcpl="git cherry-pick --log"

alias _="sudo"
alias __="sudo su"
alias la="ls -la"
alias lah="ls -lah"
alias open="xdg-open"

alias latex="latexmk -pdf -pvc -interaction=nonstopmode"

# Variables
export dev="/home/tolstovrob/Документы/dev"
export ssu="/home/tolstovrob/Документы/ssu"
export docs="/home/tolstovrob/Документы/docs"
export clubs="/home/tolstovrob/Документы/clubs"
export tutors="/home/tolstovrob/Документы/tutors"
export lectures="/home/tolstovrob/Документы/lectures"


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=/home/$USER/.cargo/bin:/home/$USER/.local/bin:/usr/bin:$PATH
source ~/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/powerlevel10k/powerlevel10k.zsh-theme
