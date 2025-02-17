if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    fish_vi_key_bindings
end

alias 'trash' 'gio trash'
function trash-restore
    for i in (seq (count $argv))
        set argv[$i] "trash:///"$argv[$i]
    end
    gio trash --restore $argv
end
alias 'trash-empty' 'gio trash --empty'
alias 'trash-list' 'gio trash --list'

set EDITOR nvim

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.local/bin $HOME/.cabal/bin /home/$USER/.ghcup/bin $PATH # ghcup-env

set LANG en_US.utf-8

zoxide init --cmd cd fish | source
