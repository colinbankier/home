# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=`whoami`

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

setopt interactivecomments
# Customize to your needs...
export PATH=$HOME/.rbenv/shims:/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X12/bin:/opt/X11/bin:$PATH
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
alias pu="plain-utils"
alias dc="docker-compose"
alias dm="docker-machine"
alias dmfix="docker-machine restart default; eval \"$(docker-machine env default)\""
alias docker-clean="docker ps -a | tr -s ' ' | cut -d ' ' -f 1 | xargs docker rm"
alias docker-clean-images="docker rmi $( docker images | grep '<none>' | tr -s ' ' | cut -d ' ' -f 3)"

function findf {
  find . -name "*$1*"
}

function search {
  grep -rI --exclude-dir=".git" --exclude-dir="tmp" "$1" .
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Boot2docker
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/colin.bankier/.boot2docker/certs/boot2docker-vm
export GOPATH="$HOME"
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/Applications/apache-maven-3.3.1
export PATH=$PATH:$M2_HOME/bin

# Docker Machine
eval "$(docker-machine env default)"

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/code/plain-utils/bin:$PATH"

