#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias calc='gnome-calculator'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias ll='ls && pwd'

#git commands
alias gb='git branch -v'
alias gr='git remote -v'
alias gs='git status'
alias gf="gs && gb && gr"
function gnew() {
	git checkout -b "$@"
}
#

# list directories immediately after changing directories
function cd() {
	builtin cd "$@" && pwd && ls --color=auto
}
function z() {
	builtin cd ../
	pwd
	ls --color=auto
}

PS1='[\u@\h \W]\$ '

export GOROOT=$HOME/code/go-workspace
export PATH=$PATH:$GOROOT
export GOPATH=$GOROOT

#export PATH="$PATH:~/.composer/vendor/bin"

# including this ensures that new gnome-terminal tabs keep the parent `pwd` !
if [ -e /etc/profile.d/vte.sh ]; then
    . /etc/profile.d/vte.sh
fi
