function git_check
    if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        echo "Not inside a Git repo."
        return 1
    end

    echo "Repo: "(basename (git rev-parse --show-toplevel))
    echo "Path: "(git rev-parse --show-toplevel)
    echo "Branch: "(git branch --show-current)

    echo
    echo "Remotes:"
    git remote -v

    echo
    echo "Status:"
    git status --short
end
