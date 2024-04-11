# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install


#======================== MY CUSTOM CONFIG ===========================#

# ------------------ PLUGINS ----------------------

# ZSH-AUTOCOMPLETE
source /home/ehsan/.zshplugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# ZSH-AUTOSUGGESTIONS
source /home/ehsan/.zshplugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# ZSH-SYNTAX-HIGHLIGHTING (MAKE SURE TO KEEP THIS AT THE END OF ALL PLUGINS)
source /home/ehsan/.zshplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ----------------- PLUGINS END -------------------

# ------------------ ALIASES ----------------------

# Alias : VIM to NVIM
#alias vim = "nvim"

# Alias for DOTFILES backup (dfbu)
alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#CD to blender addons folder
alias blenderconf="cd .config/blender/"


# --------------- ALIASES END ---------------------



# --------------- PATHS ---------------------

# Nix path



# --------------- PATHS END ---------------------








#====================== MY CUSTOM CONFIG END =========================#



# The following lines were added by compinstall
zstyle :compinstall filename '/home/ehsan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable Starship Prompt
eval "$(starship init zsh)"

export PATH=$PATH:/home/ehsan/.spicetify
