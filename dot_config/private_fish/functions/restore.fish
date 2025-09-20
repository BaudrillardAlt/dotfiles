function restore -a file
    set original (string replace -r '\.bak$' '' -- "$file")
    mv -n -- "$file" "$original"
end