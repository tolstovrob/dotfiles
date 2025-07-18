setopt NO_PRINT_EXIT_VALUE

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_INSTANT_PROMPT=quiet

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  context
  dir
  vcs
  status
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  time
  node_version
  pyenv
  rbenv
  battery
)

# Context settings (user@hostname)
POWERLEVEL9K_CONTEXT_TEMPLATE='%n@%m'
POWERLEVEL9K_CONTEXT_ALWAYS_SHOW=false
POWERLEVEL9K_CONTEXT_ALWAYS_SHOW_USER=false

# Directory settings
POWERLEVEL9K_DIR_FOREGROUND=none
POWERLEVEL9K_DIR_BACKGROUND=none
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_package_name
POWERLEVEL9K_DIR_SHORTEN_DELIM='/'
POWERLEVEL9K_DIR_SHORTEN_LENGTH=2
POWERLEVEL9K_DIR_MAX_LENGTH=40
POWERLEVEL9K_DIR_ANCHOR_BOLD=true
POWERLEVEL9K_DIR_VISUAL_IDENTIFIER_EXPANSION=''
local anchor_files=(
  .bzr
  .citc
  .git
  .hg
  .node-version
  .python-version
  .go-version
  .ruby-version
  .lua-version
  .java-version
  .perl-version
  .php-version
  .tool-versions
  .mise.toml
  .shorten_folder_marker
  .svn
  .terraform
  CVS
  Cargo.toml
  composer.json
  go.mod
  package.json
  stack.yaml
)
POWERLEVEL9K_SHORTEN_FOLDER_MARKER="(${(j:|:)anchor_files})"

# Git status settings
POWERLEVEL9K_VCS_FOREGROUND=4
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=142  # Gruvbox green (#b8bb26)
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=172  # Gruvbox orange (#d79921)
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=172  # Gruvbox orange (#d79921)
POWERLEVEL9K_VCS_BACKGROUND=none
POWERLEVEL9K_VCS_VISUAL_IDENTIFIER_EXPANSION=''

# Status settings
POWERLEVEL9K_STATUS_OK_FOREGROUND=2
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=1
POWERLEVEL9K_STATUS_BACKGROUND=none
POWERLEVEL9K_STATUS_OK=false

# Prompt char settings
POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION=''
POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION=''
POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=none

# Time settings
POWERLEVEL9K_TIME_FOREGROUND=none
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'

# Environment versions (Node.js, Python, Ruby)
POWERLEVEL9K_NODE_VERSION_FOREGROUND=2
POWERLEVEL9K_PYENV_FOREGROUND=2
POWERLEVEL9K_RBENV_FOREGROUND=2
POWERLEVEL9K_NODE_VERSION_BACKGROUND=none
POWERLEVEL9K_PYENV_BACKGROUND=none
POWERLEVEL9K_RBENV_BACKGROUND=none
POWERLEVEL9K_NODE_VERSION_PROJECT_ONLY=true
POWERLEVEL9K_PYENV_PROJECT_ONLY=true
POWERLEVEL9K_RBENV_PROJECT_ONLY=true

# Battery settings
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=20
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=1
POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='➤'
POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='✗'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=none
POWERLEVEL9K_BATTERY_BACKGROUND=none
POWERLEVEL9K_BATTERY_STAGES=()
POWERLEVEL9K_BATTERY_HIDE_ABOVE_THRESHOLD=100

# Prompt layout
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='┏━'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='┗━ '

# Segment separators for minimal spacing
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

function my_postcmd {
  echo
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd my_postcmd

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme