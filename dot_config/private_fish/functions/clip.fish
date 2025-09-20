function clip
    if test (count $argv) -eq 0
        return 1
    end
    for f in $argv
        if test -f $f
            set full (realpath $f)
            echo "== file: $full =="
            cat $f
        end
    end | wl-copy
end