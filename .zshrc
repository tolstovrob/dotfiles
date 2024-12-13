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

# Setup custom aliases
export dev="/home/tolstovrob/Документы/dev"
export clubs="/home/tolstovrob/Документы/clubs"
export docs="/home/tolstovrob/Документы/docs"
export ssu="/home/tolstovrob/Документы/ssu"
alias tl="java -jar ~/Загрузки/TLauncher.v10/TLauncher.jar"
alias lt="eza --tree --hyperlink --icons=always --level"

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

    # Получение названия удаленного репозитория
    local remote_url=$(git remote get-url origin 2>/dev/null)
    local repo=$(basename "${remote_url%.git}")  # Удаляем .git и получаем название репозитория

    # Проверка состояния репозитория
    local untracked_files=$(git ls-files --others --exclude-standard)
    local changes=$(git status --porcelain)

    local git_status=""
    
    if [[ -n "$untracked_files" ]]; then
      git_status="?"  # Есть хотя бы один неотслеживаемый файл
    elif [[ -n "$changes" ]]; then
      git_status="✗"  # Есть хотя бы одно изменение и нет неотслеживаемых файлов
    else
      git_status="✓"  # Нет изменений
      # Меняем цвет на зеленый, если нет изменений
      echo "%{$fg[white]%}── %{$fg[green]%} ${repo}:${branch} ${git_status}%{$reset_color%}"
      return
    fi

    # Возвращаем информацию о состоянии репозитория без изменения цвета
    echo "%{$fg[white]%}── %{$fg[red]%} ${repo}:${branch} ${git_status}" 
  else
    echo ""
  fi
}

function precmd() {
  echo ""
PROMPT="%B%{$fg[white]%}╭── $(date +'%d.%m.%Y') %T ── %{$fg[cyan]%}  %~ $(git_info) %{$fg[white]%} %b
%B╰── %b%B %{$fg[white]%}% %n@%m -> %b"
}

# Display launch info
echo ""
echo ""
echo "████████╗ ██████╗ ██╗     ███████╗████████╗ ██████╗ ██╗   ██╗██████╗  ██████╗ ██████╗ "
echo "╚══██╔══╝██╔═══██╗██║     ██╔════╝╚══██╔══╝██╔═══██╗██║   ██║██╔══██╗██╔═══██╗██╔══██╗"
echo "   ██║   ██║   ██║██║     ███████╗   ██║   ██║   ██║██║   ██║██████╔╝██║   ██║██████╔╝"
echo "   ██║   ██║   ██║██║     ╚════██║   ██║   ██║   ██║╚██╗ ██╔╝██╔══██╗██║   ██║██╔══██╗"
echo "   ██║   ╚██████╔╝███████╗███████║   ██║   ╚██████╔╝ ╚████╔╝ ██║  ██║╚██████╔╝██████╔╝"
echo "   ╚═╝    ╚═════╝ ╚══════╝╚══════╝   ╚═╝    ╚═════╝   ╚═══╝  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ "
echo ""
echo ""