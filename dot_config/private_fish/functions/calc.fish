function calc --wraps numbat
    numbat --pretty-print=always -e "$argv -> bin"
    numbat --pretty-print=always -e "$argv -> hex"
end
