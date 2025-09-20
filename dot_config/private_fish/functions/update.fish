function update --description 'Update Arch Linux system packages (pacman and paru)'
    command sudo pacman -Syu && command paru -Syu
end