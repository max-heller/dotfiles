if status is-interactive
    # Commands to run in interactive sessions can go here

    set fish_greeting

    set -Ux EDITOR nvim
    fish_add_path /home/max/.cargo/bin

    # Setting fd as the default source for fzf
    set -Ux FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

    # To apply the command to CTRL-T as well
    set -Ux FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    
    # Use fd for ALT-C
    set -Ux FZF_ALT_C_COMMAND 'fd --type d --strip-cwd-prefix --hidden --follow --exclude .git'

    # Use fd (https://github.com/sharkdp/fd) instead of the default find
    # command for listing path candidates.
    # - The first argument to the function ($1) is the base path to start traversal
    # - See the source code (completion.{bash,zsh}) for the details.
    function _fzf_compgen_path
      fd --hidden --follow --exclude ".git" . "$1"
    end

    # Use fd to generate the list for directory completion
    function _fzf_compgen_dir
      fd --type d --hidden --follow --exclude ".git" . "$1"
    end

    eval "$(starship init fish)"
end
