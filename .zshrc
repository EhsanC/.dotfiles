# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install


#------------ MY CUSTOM CONFIG ------------------------
#
#
#
#
#
#
#
# Aliases
alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'



#---------- MY CUSTOM CONFIG END ----------------------



# The following lines were added by compinstall
zstyle :compinstall filename '/home/ehsan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


eval "$(starship init zsh)"
