# .bashrc

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PS1="\[\e[0m\][\[\e[0;38;5;41m\]\t\[\e[0m\]] \[\e[0;92m\]→ \[\e[0m\]"
echo 'alias vim="/usr/bin/nvim"' >> ~/.bashrc
