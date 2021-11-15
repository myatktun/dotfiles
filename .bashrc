# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

# enabling powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# export PS1="\[\e[1;32m\][\[\e[m\]\[\e[1;31m\]\u\[\e[m\]\[\e[1;33m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]:\[\e[1;36m\]\W\[\e[m\]\[\e[1;31m\]\$(__git_ps1)\[\e[m\]\[\e[1;32m\]]\[\e[m\]\[\e[1;34m\]\$\[\e[m\] "
# export PS1=" \[\e[1;31m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;32m\]\h:\[\e[m\]\[\e[1;36m\]\W\[\e[m\]\[\e[1;31m\]\$(__git_ps1)\[\e[m\]\[\e[1;34m\]\$\[\e[m\] "
# export PS1='\[\033[32m\]\u \[\033[36m\]@ \h \w\[\033[32m\]$(__git_ps1)\n└─ \$ ▶\[\033[0m\] '
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
