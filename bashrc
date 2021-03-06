source /etc/profile.d/ziprecruiter_environment.sh
source ~/ziprecruiter/.ziprc

# history improvements
shopt -s histappend
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTFILESIZE=10000
PROMPT_COMMAND='history -a'
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history"

# colors for ls, etc.
alias d="ls --color"
#alias ls="ls --color=auto"
#alias ll="ls --color -l"

alias gs="git status"
alias gsc="git status --cached"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gc="git commit"
alias gla='git log --graph --oneline --decorate --all'
alias gpom="git push origin master"
alias gfgp="git fetch && git pull --autostash"
#alias mr='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-www-app'
#alias mr='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-www-app --port 8001'


# borrowed from https://github.com/necolas/dotfiles/blob/master/shell/bash_prompt
prompt_git() {
    local s=""
    local branchName=""

    # check if the current directory is in a git repository
    if [ $(git rev-parse --is-inside-work-tree &>/dev/null; printf "%s" $?) == 0 ]; then

        # check if the current directory is in .git before running git checks
        if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == "false" ]; then

            # ensure index is up to date
            git update-index --really-refresh  -q &>/dev/null

            # check for uncommitted changes in the index
            if ! $(git diff --quiet --ignore-submodules --cached); then
                s="$s+";
            fi

            # check for unstaged changes
            if ! $(git diff-files --quiet --ignore-submodules --); then
                s="$s!";
            fi

            # check for untracked files
            if [ -n "$(git ls-files --others --exclude-standard)" ]; then
                s="$s?";
            fi

            # check for stashed files
            if $(git rev-parse --verify refs/stash &>/dev/null); then
                s="$s$";
            fi

        fi

        # get the short symbolic ref
        # if HEAD isn't a symbolic ref, get the short SHA
        # otherwise, just give up
        branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
                      git rev-parse --short HEAD 2> /dev/null || \
                      printf "(unknown)")"

        [ -n "$s" ] && s=" [$s]"

        printf "%s" "$1$branchName$s"
    else
        return
    fi
}

set_prompts() {
    local black=""
    local blue=""
    local bold=""
    local cyan=""
    local green=""
    local orange=""
    local purple=""
    local red=""
    local reset=""
    local white=""
    local yellow=""

    local hostStyle=""
    local userStyle=""

    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        tput sgr0 # reset colors

        bold=$(tput bold)
        reset=$(tput sgr0)

        # Solarized colors
        # (https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized#the-values)
        black=$(tput setaf 0)
        blue=$(tput setaf 33)
        cyan=$(tput setaf 37)
        green=$(tput setaf 64)
        orange=$(tput setaf 166)
        purple=$(tput setaf 125)
        red=$(tput setaf 124)
        white=$(tput setaf 15)
        yellow=$(tput setaf 136)
    else
        bold=""
        reset="\e[0m"

        black="\e[1;30m"
        blue="\e[1;34m"
        cyan="\e[1;36m"
        green="\e[1;32m"
        orange="\e[1;33m"
        purple="\e[1;35m"
        red="\e[1;31m"
        white="\e[1;37m"
        yellow="\e[1;33m"
    fi

    # build the prompt

    # logged in as root
#    if [[ "$USER" == "root" ]]; then
#        userStyle="\[$bold$red\]"
#    else
#        userStyle="\[$orange\]"
#    fi

    # connected via ssh
#    if [[ "$SSH_TTY" ]]; then
#        hostStyle="\[$bold$red\]"
#    else
#        hostStyle="\[$yellow\]"
#    fi

    # set the terminal title to the current working directory
    PS1="\[\033]0;\w\007\]"

    #PS1+="\n" # newline
#    PS1+="\[$userStyle\]\u" # username
    PS1+="\[$orange\]\u" # username
    PS1+="\[$white\]@"
    PS1+="\[$orange\]\h" # host
    PS1+="\[$white\]: "
    PS1+="\[$green\]\W" # working directory
    #PS1+="\$(prompt_git \"$white on $cyan\")" # git repository details
    #PS1+="\$(__git_ps1 \" (%s)\")"
    #PS1+="\n"
    PS1+="\[$white\]\$ \[$reset\]" # $ (and reset color)

    export PS1
}

set_prompts
unset set_prompts

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
#export PS1="${GREEN}\u@\h ${BLUE}\w${YELLOW}$(__git_ps1 " (%s)")${COLOR_NONE}\$ "
#export PS1='\e[1;34m\t \e[0;32m[\u@\h] \w \e[0;33m$(__git_ps1)\e[0m $ '
eval `dircolors ~/dotfiles/appearance/dircolors.256dark.def`

source ~/.bashrc_local


