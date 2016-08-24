# If you come from bash you might have to change your $PATH.
export GOPATH=$HOME/work
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/virajp/.oh-my-zsh

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
alias mck="cd $GOPATH && cd src/git.periscope-solutions.com"
alias sbw='mck && cd storyboard/sb-web'
alias sbs='mck && cd storyboard/sb-svc'
alias ppv='mck && cd performance/ppv'
alias imtw='mck && cd impact/impact-tracker-web'
alias imts='mck && cd impact/impact-tracker-server'
alias shrd='mck && cd shared'
alias pcas='mck && cd pcas'
alias ocr='ws && cd c++/KOCREngine'
alias it='mck && cd impact'
alias dev='mck && cd impact/environment/dev'
alias infra='mck && cd infra'
alias mb="cd $GOPATH && cd src/git.mailbox.com"

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
