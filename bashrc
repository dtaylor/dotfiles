shopt -s histappend

# colors for ls, etc.
alias d="ls --color"
alias ls="ls --color=auto"
alias ll="ls --color -l"

alias gs="git status"
alias gsc="git status --cached"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gc="git commit"
alias gla='git log --graph --oneline --decorate --all'
alias gpom="git push origin master"

        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_BLUE="\[\033[1;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\033[0m\]"
#        RED="\e[0;31m"
#     YELLOW="\e[0;33m"
#      GREEN="\e[0;32m"
#       BLUE="\e[0;34m"
#      WHITE="\e[1;37m"
# LIGHT_BLUE="\e[1;34m"
#  LIGHT_RED="\e[1;31m"
#LIGHT_GREEN="\e[1;32m"
# LIGHT_GRAY="\e[0;37m"
# COLOR_NONE="\e[0m"
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1="${LIGHT_GREEN}\u@\h ${LIGHT_BLUE}\w${YELLOW}$(__git_ps1 " (%s)")${COLOR_NONE}\$ "
#export PS1='\e[1;34m\t \e[0;32m[\u@\h] \w \e[0;33m$(__git_ps1)\e[0m $ '


export PERL_LOCAL_LIB_ROOT="/var/home/drew/mcapp/perl5";
export PERL_MB_OPT="--install_base /var/home/drew/mcapp/perl5";
export PERL_MM_OPT="INSTALL_BASE=/var/home/drew/mcapp/perl5";
export PERL5LIB="/var/home/drew/mcapp/perl5/lib/perl5/x86_64-linux:/var/home/drew/mcapp/perl5/lib/perl5:/var/home/drew/mcapp/lib:/var/home/drew/mcapp/sites/app.startlocal.com.au/lib:/var/home/drew/mcapp/sites/api.startlocal.com.au/lib";
export PATH="/var/home/drew/mcapp/perl5/bin:/var/home/drew/mcapp/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.3.4";
