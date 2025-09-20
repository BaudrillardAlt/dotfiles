function xrg
    set file (rg --files-with-matches $argv | \
        fzf --exit-0 --preview 'bat --style=numbers --color=always {}')
    test -n "$file"; or return
    nv $file
end
