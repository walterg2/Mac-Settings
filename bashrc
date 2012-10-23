export PATH=/usr/local/bin:/usr/local/sbin:~/Workspaces/Android/android-sdk-macosx/tools:~/Workspaces/Android/android-sdk-macosx/platform-tools:$PATH

# Add git to prompt.
function parse_git_branch {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}
#BLACK="\[\033[0;30m\]"
WHITE="\[\033[0;37m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
YELLOW="\[\033[0;33m\]"
PS1="$CYAN\w$YELLOW \$(parse_git_branch)$GREEN\$ $WHITE"

alias ss='./script/server --debugger'
alias ssm='(memcached -vv &) && (./script/server --debugger)'
alias sc='./script/console'
alias sd='./script/dbconsole'
alias sg='./script/generate'
alias smoke="time cucumber -p smoke ~/workspace/triptastic/features"
alias cdt='cd ~/freelancing/triptastic'
alias tp='touch ~/freelancing/triptastic/tmp/restart.txt ; echo restarting...'
alias mc='memcached -vv &'
alias gx='gitx --all'
alias sshLabBox='ssh 10.5.147.203'
alias sftpLabBox='sftp 10.5.147.203'
alias proxy='export http_proxy=http://127.0.0.1:8282 && export https_proxy=http://127.0.0.1:8282'

# colors for misc things
    export TERM=xterm-color
    export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
    export CLICOLOR=1

# Set colors
    export LS_COLORS='di=1;36:fi=0:ln=4;34:pi=5:so=4;5:bd=5:cd=5:or=4;91:mi=4;92:ex=35:*.rb=90'


# used in command prompt
    NM="\[\033[0;38m\]" #means no background and white lines
    HI="\[\033[0;37m\]" #change this for letter colors
    HII="\[\033[0;31m\]" #change this for letter colors
    SI="\[\033[0;35m\]" #this is for the current directory
    IN="\[\033[0m\]"

## Command Prompt ##
    if [ ${USER} == "root" ];then
        export PS1="$HII\w$NM $ $IN"
    fi

    if [ ${USER} == "walterg2" ];then
        #export PS1="$SI\w$NM $ $IN"
        export PS1="\u $SI\w$NM \$(parse_git_branch)$ $IN"
    fi

# Set terminal window title
#    export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'
    export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'

## Aliases ##
# bash commands
    alias ..="cd .."
    alias ...="cd .. ; cd .."
    alias ls="ls -G" # list
    alias la="ls -Ga" # list all, includes dot files
    alias ll="ls -Gl" # long list, excludes dot files
    alias lla="ls -Gla" # long list all, includes dot files

if [[ -s /Users/walterg2/.rvm/scripts/rvm ]] ; then source /Users/walterg2/.rvm/scripts/rvm ; fi