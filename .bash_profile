# Tell ls to be colorful
export CLICOLOR=1
source ~/.bashrc

#add gitbranch to PS1
#parse_git_branch() {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

PS1='\u@\h \W\[\033[32m\]$(__git_ps1 " (%s)")\[\033[00m\]$ '

##OSX customizations

# Setting PATH for Python 2.7 when on OSX
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

#source path for Brew
#export PATH=/usr/local/sbin:$PATH

#source bash-completion
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#      . $(brew --prefix)/etc/bash_completion
#fi
