# Default exports
export ZSH="$HOME/.oh-my-zsh"

# Terminal theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-autosuggestions       # git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  zsh-syntax-highlighting   # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
)

# Launch Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Custom aliases