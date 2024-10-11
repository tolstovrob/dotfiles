# Default exports
export ZSH="$HOME/.oh-my-zsh"


# Terminal theme
ZSH_THEME="cloud"


# Plugins
plugins=(
  git
  zsh-autosuggestions       # git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  zsh-syntax-highlighting   # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
)


# Launch Oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Custom aliases


# Prompt config
autoload -U colors && colors

git_info() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    # Получение текущей ветки
    local branch=$(git symbolic-ref --short HEAD 2>/dev/null)

    # Если ветка не найдена (например, в состоянии detached HEAD), используем альтернативный способ
    if [ -z "$branch" ]; then
      branch=$(git rev-parse --short HEAD 2>/dev/null)  # Показываем SHA коммита
    fi

    local repo=$(basename "$(git rev-parse --show-toplevel)" 2>/dev/null)

    # Условие для выбора смайлика
    if [[ "$branch" == "main" || "$branch" == "master" ]]; then
      echo " ${repo}:${branch}"
    else
      echo " ${repo}:${branch}"
    fi
  else
    echo "󰊢 No git repo"
  fi
}

PROMPT="%B%{$fg[cyan]%}  %~ %{$fg[red]%}     $(git_info)%b
%B$ %{$fg[white]%}% %n@%m -> %b"

function precmd() {
  PROMPT="%B%{$fg[cyan]%}  %~ %{$fg[red]%}     $(git_info)%b
%B$ %{$fg[white]%}% %n@%m -> %b"
}
