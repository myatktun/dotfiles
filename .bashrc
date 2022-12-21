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

# auto start tmux
if [[ ! $TERM =~ screen ]] && [[ ! $TERM =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux attach || tmux new
fi

# auto start starship
eval "$(starship init bash)"

export EDITOR="$(which nvim)"

# git setup for config files
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias checkpatch="$HOME/Linux/linux_mainline/scripts/checkpatch.pl"
alias get_maintainer="$HOME/Linux/linux_mainline/scripts/get_maintainer.pl"

alias update-grub="grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg"

# yarn path
export PATH="$PATH:$HOME/.yarn/bin"

# android/sdk path
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
alias studio="/usr/local/android-studio/bin/studio.sh"

# perl path
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

# go path
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# cargo path (rust pkp manager)
export PATH=$PATH:$HOME/.cargo/env

# terraform
alias tf="terraform"
complete -C $(which terraform) terraform

# to display git status
# source ~/.git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=true
# export GIT_PS1_SHOWUNTRACKEDFILES=true
# export GIT_PS1_SHOWUPSTREAM="verbose"
# export GIT_PS1_SHOWCOLORHINTS=true

# K8s config
alias k="kubectl"
complete -o default -F __start_kubectl k
source <(kubectl completion bash)
source <(minikube completion bash)

# eksctl autocomplete
source <(eksctl completion bash)
complete -C '/usr/local/bin/aws_completer' aws

# Helm config
source <(helm completion bash)

# fzf key-bindings
if [ -x "$(command -v fzf)"  ]
then
  source /usr/share/fzf/shell/key-bindings.bash
fi

function mkcd
{
  command mkdir $1 && cd $1
}

# PROMPT_DIRTRIM=2
# export PS1="\[\e[1;31m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;32m\]\h:\[\e[m\]\[\e[1;36m\]\W\[\e[m\]\[\e[1;31m\]\$(__git_ps1)\[\e[m\]\[\e[1;34m\]\$\[\e[m\] "
# PROMPT_COMMAND='__git_ps1 "\[\e[1;31m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;32m\]\h:\[\e[m\]\[\e[1;36m\]\W\[\e[m\]" "\[\e[1;34m\]\$\[\e[m\] "'
# export PS1='\[\033[32m\]\u \[\033[36m\]@ \h \w\[\033[32m\]$(__git_ps1)\n└─ \$ ▶\[\033[0m\] '

if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi

unset rc
