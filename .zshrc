# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv virtualenvwrapper npm bundler yarn)

source $ZSH/oh-my-zsh.sh

# User configuration
export ORACLE_HOME="/opt/instantclient_11_2"
export OCI_DIR=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export SQLPATH=$ORACLE_HOME
export TNS_ADMIN=$HOME"/Documents"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$ORACLE_HOME
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

## Aliases
alias ls="ls -hlGFA"

# Git
alias cgs="clear; git status"

# Rails
alias bi="bundle install"
alias lint="bundle exec rake site --trace && open target/site/Lint-Results/lint-results.html && open target/site/Release-Notes/release_notes.html"
alias crs="clear; rails server"

# Oh My ZSH
alias omz="subl ~/.oh-my-zsh ~/.oh-my-zsh/themes/$ZSH_THEME.zsh-theme ~/.zshrc"
alias rezsh="source ~/.zshrc"
alias zshrc="subl ~/.zshrc"
alias powerline="echo \"\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699\""
precmd() { printf '\e]0;\7' }

# Django
alias mpy="./manage.py"
alias djs="mpy runserver"

# Misc
alias psg="ps -e | grep -v grep | grep -i "
alias hg="history | grep -i "

# Override system vim
alias vim="$(brew --prefix vim)/bin/vim"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export WORKON_HOME=/opt/.virtualenvs/
source /usr/local/bin/virtualenvwrapper.sh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export DEBUG_IND=1

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.cargo/env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
