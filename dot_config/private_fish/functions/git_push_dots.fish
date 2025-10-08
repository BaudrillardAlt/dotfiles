function git_push_dots
    set repos \
        ~/.local/share/chezmoi \
        ~/architect \
        ~/.config/nvim \
        ~/notes

    set timestamp (date '+%a %b %-d %H:%M:%S %Z %Y')

    for repo in $repos
        git -C $repo add -A
        and git -C $repo commit -m $timestamp
        and git -C $repo push
    end
end
