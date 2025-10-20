if status is-interactive
    set -gx ZELLIJ_AUTO_ATTACH true
    if not set -q ZELLIJ
        if test "$ZELLIJ_AUTO_ATTACH" = true
            if test (pgrep -c footclient) -le 1
                zellij attach --create main
            end
        else
            zellij --session main
        end
    end
    set fish_greeting ""
    set fish_key_bindings fish_vi_key_bindings
    starship init fish | source
    zoxide init fish | source
end

set -gx SUDO_EDITOR 'env -u NVIM_LISTEN_ADDRESS nvim'

abbr -a cp cp -rv
abbr -a rm rm -rv
abbr -a dot chezmoi
abbr -a s sendchat

abbr -a n nv
abbr -a vim nv
abbr -a x nv
abbr -a j just
abbr -a py python
abbr -a wl wl-copy

abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'
abbr -a .... 'cd ../../..'
abbr -a ..... 'cd ../../../..'

fish_add_path /home/wasd/architect/scripts
fish_add_path $CARGO_HOME/bin
