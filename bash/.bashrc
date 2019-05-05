# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
export PATH

unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_END="\n🐶 "
source ~/.bash-git-prompt/gitprompt.sh
source /usr/share/fzf/shell/key-bindings.bash

alias vim='gvim -v'
