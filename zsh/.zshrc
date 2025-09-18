# Load stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fpath=($fpath "/home/tolstovrob/.zfunctions")

# Enable less color highlight
export LESS="-R"

# Oh My zsh config
export ZSH="$HOME/.oh-my-zsh"

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

alias gi="git init"
alias gcl="git clone"
alias grm="git remote"
alias gst="git status"
alias gl="git log --oneline --graph --decorate --all"
alias glf="git log --graph --decorate --all"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gsw="git switch"
alias gsc="git switch -c"
alias gb="git branch"
alias gpl="git pull"
alias gplo="git pull origin"
alias gp="git push"
alias gpo="git push origin"
alias gpf="git push --force-with-lease"
alias gpfo="git push --force-with-lease origin"
alias gpF="git push --force"
alias gpFo="git push --force origin"
alias gr="git reset"
alias grh="git reset --hard"
alias grs="git reset --soft"
alias grb="git rebase"
alias gri="git rebase -i"
alias grfl="git reflog"
alias gsh="git stash"
alias gcln="git clean -fd"
alias gtag="git tag"
alias gtags="git tag -l"
alias gfetch="git fetch --all --prune"
alias gd="git diff"
alias gshow="git show"
alias gcp="git cherry-pick"

alias ls='ls --color=auto -F'
alias l='ls -lah'
alias la='ls -A'
alias ll='ls -l'
alias lt='ls -lt'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias ff='find . -type f -name'
alias fd='find . -type d -name'
alias fzf='fzf --preview "bat --color=always {}"'

alias ps='ps aux'
alias psg='ps aux | grep -i'
alias kill9='kill -9'
alias killa='killall'

alias duh='du -h --max-depth=1'
alias dfh='df -h'
alias free='free -h'

alias bat='bat --paging=never'
alias less='less -R'

alias myip='curl ipinfo.io/ip'
alias ports='netstat -tuln'
alias speed='speedtest-cli'

alias grep='grep --color=auto'
alias sedr='sed -r'

alias untar='tar -xvzf'
alias zip='zip -r'
alias unzip='unzip'

alias h='history'
alias hg='history | grep'
alias now='date "+%Y-%m-%d %H:%M:%S"'

alias xpost='curl -X POST'
alias xget='curl -X GET'

alias _="sudo"
alias __="sudo su"
alias la="ls -la"
alias lah="ls -lah"
alias open="xdg-open"

alias zed="flatpak run dev.zed.Zed"
alias latex="latexmk -pdf -pvc -interaction=nonstopmode"

# Variables
export dev="$HOME/Документы/dev"
export ssu="$HOME/Документы/ssu"
export docs="$HOME/Документы/docs"
export clubs="$HOME/Документы/clubs"
export tutors="$HOME/Документы/tutors"
export lectures="$HOME/Документы/lectures"

# Prompt
TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"
TYPEWRITTEN_SYMBOL="$"
TYPEWRITTEN_CURSOR="beam"

autoload -U promptinit; promptinit
prompt typewritten

