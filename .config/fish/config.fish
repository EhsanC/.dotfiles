if status is-interactive
    # Commands to run in interactive sessions can go here
        set fish_greeting

#-----------------Paths--------------------

set PATH /home/ehsan/.local/bin $PATH

#-----------------Paths end ---------------


#------------------VI MODE-----------------
function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase insert
end
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block
#------------------VI MODE END-----------------


starship init fish | source


#----------------- ALIASES --------------------


#GIT bare repository

alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#Yazi Alias
alias yazi='/home/ehsan/yazi/target/release/yazi'

#----------------- ALIASES END ---------------

#----------------- DEFAULTS ------------------

export EDITOR=nvim




end

fish_add_path /home/ehsan/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
