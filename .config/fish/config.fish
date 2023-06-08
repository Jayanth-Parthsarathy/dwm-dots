if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    alias config '/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

    # Key bindings for fzf
    function fish_user_key_bindings
        # Reverse history search with Ctrl + R
        bind \cr 'fzf-history'

        # File search with Ctrl + T
        bind \ct 'fzf-files'
    end
end

starship init fish | source

