function git_push
    git add .
    set timestamp (date '+%a %b %-d %H:%M:%S %Z %Y')
    git commit -m $timestamp
    git push
end
