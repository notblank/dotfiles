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
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

# vi mode
bindkey -v
export KEYTIMEOUT=1

# zsh package manager:
source ~/antigen.zsh

# load:

antigen bundle git
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# to apply:
antigen apply

alias ls='ls --color=auto'

# opam configuration
test -r /home/zee/.opam/opam-init/init.zsh && . /home/zee/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
