#when using the OneDark theme, modify the LS_COLORS variable with dircolors
eval 'dircolors ~/.dircolors' > /dev/null

#WSL-specific customizations
 #start ssh-agent on launch
#!/bin/bash

# Set up ssh-agent
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initializing new SSH agent..."
    touch $SSH_ENV
    chmod 600 "${SSH_ENV}"
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' >> "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add $HOME/.ssh/*.priv
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
   . "${SSH_ENV}" > /dev/null
   kill -0 $SSH_AGENT_PID 2>/dev/null || {
     start_agent
   }
else
    start_agent
fi

#China-specific customiziations

#Taobao's NPM mirror
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

#OSX-specific customizations

#bind the delete character explicitly.
#bind '"\e[3~": delete-char'
