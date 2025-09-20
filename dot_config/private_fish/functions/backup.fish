function backup -a filename
    mv -n -- "$filename" "$filename.bak"
end