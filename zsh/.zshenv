if [[ -e "${HOME}/Library/Android/sdk" ]]; then
  export ANDROID_HOME="${HOME}/Library/Android/sdk"
else
  export ANDROID_HOME="${HOME}/Android/Sdk"
fi
export GOPATH="$HOME/Source/go"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"

export PATH=$HOME/.bin:$PATH
export PATH="${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:${PATH}"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH

# ESP32 Dev Stuff
export PATH=$PATH:$HOME/.esp/xtensa-esp32-elf/bin
export IDF_PATH=~/.esp/pycom-esp-idf

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Source
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

[ -x "$(command -v pyenv)" ] && eval "$(pyenv init -)"
[ -e "/usr/bin/virtualenvwrapper.sh" ] && source /usr/bin/virtualenvwrapper.sh
[ -e "/usr/share/virtualenvwrapper/virtualenvwrapper.sh" ] && source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -f /home/frank/.travis/travis.sh ] && source /home/frank/.travis/travis.sh
