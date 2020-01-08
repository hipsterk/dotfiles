export ZSH=~/.oh-my-zsh
ZSH_THEME="spaceship"
plugins=(
  git
  fast-syntax-highlighting
  zsh-completions
)
source $ZSH/oh-my-zsh.sh

# Spaceship
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_EXEC_TIME_ELAPSED=9
SPACESHIP_USER_SHOW=needed
SPACESHIP_HOST_SHOW=false

# Aliases
alias ls='ls --group-directories-first --color=auto'
alias la='ls -a'
alias l='ls -lah'
alias ll='ls -lh'
alias g='git'
alias t='tmux'
alias less='less -R'
