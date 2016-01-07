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
cd ~


# system monitoring
alias topcpu='ps aux | tail -10'  # top 10 cpu processes
alias topmem='ps aux | tail -10'  # top 10 memory processes

# listing files - I usually end up using 'l' since its quick and easy
alias l='ls -alh'
alias lt='l -t | less'

 # history options
export HISTCONTROL=erasedups # don't store duplicate lines
export HISTSIZE=100000 #remember 100k unique lines

alias get-current-branch="git branch 2>/dev/null | grep '^*' | colrm 1 2"
alias get-current-color="if [[ \$(get-current-branch) == \"master\" ]] ; then echo \"1;33m\" ; else echo \"0m\" ; fi"
