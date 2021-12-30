# Load spaceship-prompt
autoload -U promptinit; promptinit
prompt spaceship

# spaceship settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_EXEC_TIME_ELAPSED=9
SPACESHIP_USER_SHOW=needed
SPACESHIP_HOST_SHOW=false
SPACESHIP_BATTERY_SHOW=false

# fast-syntax-highlighting
source ~/git-repos/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Fix dolphin colors
source ~/.profile

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'

# aliases
alias ls='ls --group-directories-first --color=auto'
alias la='ls -a'
alias l='ls -lah'
alias ll='ls -lh'
alias g='git'
alias less='less -R'
alias vi='nvim'
alias grep='grep --color=always'
alias deemix='python3 -m deemix -b flac'
alias diff='diff --color'

PATH="/home/hipsterk/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/hipsterk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/hipsterk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/hipsterk/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/hipsterk/perl5"; export PERL_MM_OPT;

GTK_THEME=Arc:dark
