# Path to your oh-my-zsh installation.
export TERM=xterm-256color
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
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X12/bin:/opt/X11/bin:$PATH
export PATH="/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:$PATH"
#export PATH="$HOME/Play/elixir/bin:$PATH"
# export PATH="/usr/local/packer:$PATH"
export PATH="/home/colin/.cargo/bin:$PATH"

# npm
export PATH="$PATH:$HOME/.npm/bin"

export WORKON_HOME=/home/colin/.virtualenv

# Ansible
#export PATH=/Users/colin.bankier/Play/ansible/bin:$PATH
#export PYTHONPATH=/Users/colin.bankier/Play/ansible/lib:/usr/local/lib/python2.7/site-packages
#export ANSIBLE_LIBRARY=/Users/colin.bankier/Play/ansible/library:/usr/share/ansible/
#export MANPATH=/Users/colin.bankier/Play/ansible/docs/man:
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages
#export PATH="/Users/colin.bankier/Play/ansible/bin:$PATH"
#eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
export EDITOR="emacs"
export PGHOST=localhost
alias smartman="rerun -d .git -p 'CURRENT_BRANCH' foreman start"
alias restartforeman='touch .git/CURRENT_BRANCH'
alias open="xdg-open"
alias dc="docker-compose"
alias dm="docker-machine"
alias docker-clean="docker ps -a | grep -v CONTAINER | tr -s ' ' | cut -d ' ' -f 1 | xargs docker rm"
alias docker-clean-images="docker images | grep -v IMAGE | tr -s ' ' | cut -d ' ' -f 3 | xargs docker rmi -f"
alias docker-clean-volumes="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/lib/docker:/var/lib/docker"
alias docker-time="docker-machine ssh default 'sudo ntpclient -s -h pool.ntp.org'"
# Consider updating the above to
# docker rm $(docker ps -q -f status=exited)
# docker volume rm $(docker volume ls -qf dangling=true)
# docker rmi $(docker images --filter "dangling=true" -q --no-trunc)


# alias e="emacs"
function e {
    /usr/bin/emacs "$@" &
}

function dmenv {
    eval "$(docker-machine env default)"
}

function dmfix {
  docker-machine restart default;
  dmenv
}

function findf {
  find . -name "*$1*"
}

function search {
  grep -rI --exclude-dir=".git" --exclude-dir="tmp" "$1" .
}

export VAGRANT_DEFAULT_PROVIDER=aws

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Boot2docker
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/colin.bankier/.boot2docker/certs/boot2docker-vm
export GOPATH="$HOME"
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
# export M2_HOME=/Applications/apache-maven-3.3.1
export PATH=$PATH:$M2_HOME/bin
# Spark
export SPARK_HOME=/home/colin/Applications/spark-1.6.0-bin-hadoop2.6
# export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PATH="$SPARK_HOME/bin:$PATH"
# added by Anaconda2 2.4.0 installer
# export PATH="/home/colin/anaconda2/bin:$PATH"
# Cask
export PATH="/home/colin/.cask/bin:$PATH"

# Docker Machine
# docker-machine start default; dmenv

export AWS_IAM_USERNAME="cbankier@atypon.com"
. "$HOME/bin/aws_authenticate.sh"


# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/code/plain-utils/bin:$PATH"

plugins+=(zsh-completions)

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/colin.bankier/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/colin/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/colin/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/colin/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/colin/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh