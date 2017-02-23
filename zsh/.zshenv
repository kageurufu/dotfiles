export GOPATH="$HOME/Source/go"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"

export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH
export PATH="$PYENV_ROOT/bin:$PATH"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Source
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

[ -x "$(command -v pyenv)" ] && eval "$(pyenv init -)"
[ -e "/usr/bin/virtualenvwrapper.sh" ] && source /usr/bin/virtualenvwrapper.sh
[ -e "/usr/share/virtualenvwrapper/virtualenvwrapper.sh" ] && source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
