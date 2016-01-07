export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

[[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  if $_isxrunning; then

    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

    export TERM='xterm-256color'

     B='\[\e[1;38;5;33m\]'
    LB='\[\e[1;38;5;81m\]'
    GY='\[\e[1;38;5;242m\]'
     G='\[\e[1;38;5;82m\]'
     P='\[\e[1;38;5;161m\]'
    PP='\[\e[1;38;5;93m\]'
     R='\[\e[1;38;5;196m\]'
     Y='\[\e[1;38;5;214m\]'
     W='\[\e[0m\]'

# --------------------------------------------------------------------------------
#                change prompt
#---------------------------------------------------------------------------------
     
    get_prompt_symbol() {
      [[ $UID == 0 ]] && echo "#" || echo " 👉 "
    }


    if [ -f /opt/local/etc/bash_completion ]; then
            . /opt/local/etc/bash_completion
    fi

    if [[ $PS1 && -f ~/.git-prompt.sh ]]; then
      source ~/.git-prompt.sh

      export GIT_PS1_SHOWDIRTYSTATE=1
      export GIT_PS1_SHOWSTASHSTATE=1
      export GIT_PS1_SHOWUNTRACKEDFILES=0

      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
      export PS1="$Y\u$B:\w\$(__git_ps1 \"$GY $R(%s)\")\$(get_prompt_symbol)$W "
    else
      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\w$GY]$W\$(get_prompt_symbol) "
      export PS1="$GY[$Y\u$GY:$B\w$GY]$W\$(get_prompt_symbol) "
    fi
  else
    export TERM='xterm-color'
  fi
export PATH=$PATH:~/bin

cd ~ #common path to open

#----------------------------------------------------------------
   #2 aliasing - making terminal better
#-----------------------------------------------------------------

# system monitoring
alias topcpu='ps aux | tail -10'  # top 10 cpu processes
alias topmem='ps aux | tail -10'  # top 10 memory processes

# listing files - I usually end up using 'l' since its quick and easy
alias l='ls -alh'
alias lt='l -t | less'

 # history options
export HISTCONTROL=erasedups # don't store duplicate lines
export HISTSIZE=100000 #remember 100k unique lines

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias fix='stty sane'
#recurive ls the files
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias qfind="find . -name "                 # qfind:    Quickly search for filei
alias ip='ifconfig | grep "inet" | tail -1'
alias mysites='chrome www.gmail.com www.github.com www.trello.com '
