if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    alias config '/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
end
starship init fish | source
