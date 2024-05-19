# .bashrc
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

eval "$(starship init bash)"
eval "$(zoxide init bash)"

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
alias cpv='rsync -avh --info=progress2'
alias cp='cp -i'
alias mv='mv -i'
alias bashrc='nano ~/.bashrc'
alias count='ls * | wc -l'
alias n='nano'

alias free='free -h'
alias du='du -h --max-depth=1'
alias df='df -h'
alias ps='ps auxf'
alias cat='bat'
