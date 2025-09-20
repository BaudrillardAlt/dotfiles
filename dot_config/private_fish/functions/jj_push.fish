function jj_push
    set ts (date +%Y-%m-%d_%H-%M)
    jj bookmark set main -r @ && jj describe -m $ts && jj git push --bookmark main
end
