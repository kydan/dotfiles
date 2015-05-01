GPG_TTY=`tty`
export GPG_TTY
export CLICOLOR=1

# Before other PATHs...
PATH=${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin/

# Python
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh ]]; then
  source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi
