if [[ -f /usr/bin/pacman ]]; then
    sudo pacman -Syu --needed flatpak
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo reboot
elif [[ -f /usr/bin/apt ]]; then
    sudo apt update
    sudo dpkg --add-architecture i386
    sudo apt install flatpak
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo reboot
else
    echo "nothing to presetup"
fi
