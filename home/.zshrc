[[ $- != *i* ]] && return

source $HOME/.zaliases

bindkey -e
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#eval `dircolors ~/.dir_colors/dircolors`

source ~/.zprofile
