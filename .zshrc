export ZSH="/Users/jackkuo/.oh-my-zsh"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  colored-man-pages
  docker
  git
  extract
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# brew below
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin/"
export PATH=$PATH:/usr/local/sbin/
export MANPATH="/usr/local/man:$MANPATH"
# install gun updated tools from brew
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
# brew upon

# VMWare command
export PATH="/Applications/VMware Fusion.app/Contents/Library:$PATH"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


alias java_jre='/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java'
alias java='/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java'
alias artisan='php artisan'
alias python='/usr/bin/python'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jackkuo/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jackkuo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jackkuo/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jackkuo/google-cloud-sdk/completion.zsh.inc'; fi
export GOPATH=$(go env GOPATH)
alias ls="gls --color=always"

# AWS cli auto complete
source /usr/local/bin/aws_zsh_completer.sh

# Golang command
alias gobuildwin='env GOOS=windows GOARCH=386 go build'
alias gobuildwin64='env GOOS=windows GOARCH=amd64 go build'

alias ..='cd ..'
alias gpg='gpg2'
alias bindport='lsof -nP -iTCP -sTCP:LISTEN'
alias ppp="netstat -vanp tcp"
# The docker commands
alias ubuntu='docker run -it ubuntu /bin/bash'
alias ubunturm='docker run -it --rm ubuntu /bin/bash'
alias ubunturm16='docker run -it --rm ubuntu:16.04 /bin/bash'
alias sonarqube='docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube'
alias tor="docker run --rm -it -p 8080:8118 -p 9050:9050 -d dperson/torproxy"
alias mibis="docker run -it --cap-add sys_ptrace mibis /bin/bash"
alias mibisrmv="docker run -it -v "\`pwd\`":/root/share --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --rm mibis /bin/bash"
alias u16="docker run -it --rm -v "\`pwd\`":/root/share --cap-add=SYS_PTRACE --security-opt seccomp=unconfined u16 /bin/bash"
alias u18="docker run -it --rm -v "\`pwd\`":/root/share --cap-add=SYS_PTRACE --security-opt seccomp=unconfined u18 /bin/bash"
alias myarch="docker run -it -p 9000:9000 -v \`pwd\`:/root/share --cap-add sys_ptrace --rm myarch /bin/bash"
# mv: prompt before overwrite
alias mv="mv -i"
alias cp="cp -i"
alias rg="rg -i"
alias vpn_canlab_ap="pppd call canlab_ap"
alias myip="curl ipinfo.io"
alias reload="source ~/.zshrc"
alias ip3="ipython3"
alias corona="curl https://corona-stats.online/"
# multipass
alias mtp="multipass"
alias mtpnew="mtp launch -c 4 -d 2G -m 512M"
alias dush="du -sh * | sort -h"
export GPG_TTY=$(tty)
function search_note() {
    rg $1 ~/Dropbox/notes
}
alias snote="search_note"
alias dat2mp4="for f in *.DAT;do ffmpeg -i \"\$f\" \"\${f%.DAT}.mp4\"; done"
alias gd="git icdiff"
#PYTHONWARNINGS="ignore:Unverified HTTPS request"

alias pythonformat="isort && black . && autopep8 --in-place --recursive . && flake8"

