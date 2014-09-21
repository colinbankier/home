# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
setopt interactivecomments
HOME=/Users/colin.bankier
# Customize to your needs...
export PATH=/Users/colin.bankier/.rbenv/shims:/usr/local/sbin:/usr/local/bin:/Users/colin.bankier/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X12/bin:/opt/X11/bin:$PATH
export PATH="/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:$PATH"
#export PATH="$HOME/Play/elixir/bin:$PATH"
export PATH="/usr/local/packer:$PATH"
export PATH="/Users/colin.bankier/bin:$PATH"

# Ansible
#export PATH=/Users/colin.bankier/Play/ansible/bin:$PATH
#export PYTHONPATH=/Users/colin.bankier/Play/ansible/lib:/usr/local/lib/python2.7/site-packages
#export ANSIBLE_LIBRARY=/Users/colin.bankier/Play/ansible/library:/usr/share/ansible/
#export MANPATH=/Users/colin.bankier/Play/ansible/docs/man:
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages
#export PATH="/Users/colin.bankier/Play/ansible/bin:$PATH"
#eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
export EDITOR=vim
export PGHOST=localhost
alias smartman="rerun -d .git -p 'CURRENT_BRANCH' foreman start"
alias restartforeman='touch .git/CURRENT_BRANCH'

function findf {
  find . -name "*$1*"
}

function search {
  grep -rI --exclude-dir=".git" --exclude-dir="tmp" "$1" .
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
