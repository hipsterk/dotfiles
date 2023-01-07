# Load spaceship-prompt
autoload -U promptinit; promptinit
prompt spaceship

# spaceship settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_EXEC_TIME_ELAPSED=9
SPACESHIP_USER_SHOW=needed
SPACESHIP_HOST_SHOW=false
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_ASYNC_SYMBOL=" "

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
   '+l:|?=** r:|?=**'

# aliases
alias ls='ls --group-directories-first --color=auto'
alias la='ls -a'
alias l='ls -lah'
alias ll='ls -lh'
alias g='git'
alias vi='nvim'
alias less='less -R'
alias grep='grep --color=always'
alias diff='diff --color'
alias sudo='sudo -p "Password: "'
alias ta='tmux attach -t'

export LC_ALL="C"

QT_QPA_PLATFORMTHEME=gtk2
GTK_THEME=Arc:dark

# functions
function nd {
  node -i -e "$(< ${1})"
}

# Locale
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
HISTORY_IGNORE="(cd|cd *|ls *|pwd|exit|vi|vi *)"
setopt histignorespace

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)          # Include hidden files

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# fast-syntax-highlighting
source ~/git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
