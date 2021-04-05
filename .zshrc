export PATH="${PATH}:/home/zee/.local/bin"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zee/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# startx on startup
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

# Enable colors and change prompt:
# autoload -U colors && colors
# PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "
PROMPT='[%n@%m] %(4~|.../%3~|%~) '

# vi mode
bindkey -v
export KEYTIMEOUT=1

# zsh package manager:
source ~/antigen.zsh

# load:

antigen bundle git
antigen bundle lein
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# to apply:
antigen apply

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

# opam configuration
test -r /home/zee/.opam/opam-init/init.zsh && . /home/zee/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

