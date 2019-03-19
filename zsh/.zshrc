. $HOME/.zshenv
for file in $HOME/.zsh/aliases/*; do
  source $file
done

autoload colors zsh/terminfo
autoload -U compinit promptinit
compinit
promptinit

setopt appendhistory
setopt sharehistory
setopt autocd
setopt correct
setopt noclobber
setopt extendedglob

# make cd not select parent dir and ignore some files during completion
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# ignore *.pyc and *~ files for completion for everything but rm and ls
zstyle ':completion:*:(all-|)files' ignored-patterns "(*.pyc|*~)"
zstyle ':completion:*:ls:*:(all-|)files' ignored-patterns
zstyle ':completion:*:rm:*:(all-|)files' ignored-patterns

#-LOAD AND INITIALIZE ZGEN ----------------------------------------------------
if [ ! -f ~/.zgen/zgen.zsh ]; then
  git clone http://github.com/tarjoilija/zgen ~/.zgen
fi
source ~/.zgen/zgen.zsh

if ! zgen saved; then
  zgen load zsh-users/zsh-syntax-highlighting
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/golang
  zgen oh-my-zsh plugins/httpie
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/pep8
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/postgres
  # zgen oh-my-zsh plugins/virtualenv
  # zgen oh-my-zsh plugins/virtualenvwrapper
  zgen oh-my-zsh plugins/pyenv
  zgen oh-my-zsh themes/agnoster

  zgen save
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/frank/.nvm/versions/node/v9.7.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/frank/.nvm/versions/node/v9.7.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/frank/.nvm/versions/node/v9.7.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/frank/.nvm/versions/node/v9.7.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh