function git_push
    git add .
    set ts (date +%Y-%m-%d_%H-%M)
    git commit -m $ts
    git push
end
