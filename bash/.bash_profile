export EDITOR=/usr/bin/vim
export BUNDLER_EDITOR=atom

############ Compile stuff ############
export JAVA_HOME=$(/usr/libexec/java_home)
export ARCHFLAGS="-arch x86_64"
# For cpan
export CFLAGS="-arch x86_64"

############    Prompt     ############
export cyan=$'\e[1;36m'
export magenta=$'\e[1;35m'
export normal=$'\e[m'
CLICOLOR="YES"; export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExEx";    export LSCOLORS

# shows git branch in current dir
export PS1="\h@\u:\w\\[$magenta\]-\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$\[$normal\] "
# default prompt
echo -n -e "\033]0;${USER}@${HOSTNAME} : ${PWD/#$HOME/~}\007"
# prints date after command
PROMPT_COMMAND="date"
PS4='$0.$LINENO+ '
# helper to change prompt title
function changetitle {
  printf "\033]0;%s\007" "$1"
}
# Linux conventions
TERM=linux

############      git      ############
# disables autoedit message on merges
export GIT_MERGE_AUTOEDIT=no

function git_newbranch {
 if [ -z $1 ]
 then
   echo 'please enter a name for the branch'
 else
   git push origin master:refs/heads/$1
 fi
}

alias gitclean-branch='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

############    aliases    ############
alias ll="ls -la -G"
alias flushdns="dscacheutil -flushcache"
