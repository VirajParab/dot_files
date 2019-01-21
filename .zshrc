# If you come from bash you might have to change your $PATH.
export GOPATH=$HOME/work
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin:/usr/local/go/bin:/Users/in-virajp/spark-2.3.1-bin-hadoop2.7/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/in-virajp/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions git node npm brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias ozp='vim ~/.zshrc'
alias szp='source ~/.zshrc'
alias xe="exit"
alias c="clear"
alias vrc='vim ~/.vimrc'
alias g+="g++-5"
alias gc="gcc-5"
alias c+="clang++"
alias cc="clang"

#personal projects
alias ws="cd ~/Workspace"
alias cws='ws && cd c++'


#project paths

#git specific
alias gs='git status'
alias gd='git diff'
alias gpr='git pull -r'
alias gs='git status'
alias gst='git status -sb'
alias ga='git add'
alias gau='git add -u' # Removes deleted files
alias gp='git pull'
alias gpu='git push'
alias gc='git commit'
alias gca='git commit -v -a' # Does both add and commit in same command, add -m 'blah' for comment
alias gco='git checkout'
alias gl='git log --oneline'
alias glog='git log'

#go vendor experiment
export GO15VENDOREXPERIMENT=1

alias psql='/Applications/Postgres.app/Contents/Versions/9.6/bin/psql'

export MAGICK_HOME="/Users/in-virajp/projects/E4R_exp/ImageMagick-7.0.7"
export PATH=$MAGICK_HOME/bin:$PATH
export PATH=~/Library/Python/2.7/bin:$PATH
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rvm --default use 2.5.1

[[ -s /Users/in-virajp/.autojump/etc/profile.d/autojump.sh ]] && source /Users/in-virajp/.autojump/etc/profile.d/autojump.sh

export SBT_OPTS=-Xss1024M
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=/Users/in-virajp/work/bin:$PATH

alias exportToZsh="echo $1 >> ~/.zshrc" 

export PATH=/Users/in-virajp/spark-2.3.2-bin-hadoop2.7/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
    source ~/.config/exercism/exercism_completion.zsh
fi
