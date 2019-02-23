# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_END="\n🐶 "
source ~/.bash-git-prompt/gitprompt.sh

alias vim='gvim -v'
