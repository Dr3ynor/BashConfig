# .bashrc
eval "$(starship init bash)"
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

alias update='sudo dnf update && sudo dnf upgrade'
alias school='cd /home/jakub/School/6_semester'
alias neofetch='fastfetch'
alias ..='cd ..'
alias c='clear'
alias top='btop'
alias ...='cd ../..'
alias h='cd'
alias l='ls -al'
alias f='find . | grep'

alias free='free -h'
alias du='du -h --max-depth=1'
alias df='df -h'
alias ps='ps auxf'
