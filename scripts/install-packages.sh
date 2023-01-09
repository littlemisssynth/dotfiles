#!/bin/bash
echo "Installing packages..."
flatpak() {
    if [[ -f /usr/bin/flatpak ]]; then
            # Add remote repository
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            flatpak install "$(cat packages/flatpak)"
    fi
}
if [[ -f /usr/bin/pacman ]]; then
    sudo pacman -Syu --needed $(cat packages/pacman)
    mkdir -p ~/code/aur
    echo "Instaling AUR helper paru-bin..."
    git clone https://aur.archlinux.org/paru-bin.git ~/code/aur/paru-bin
    pushd ~/code/aur/paru-bin > /dev/null
    makepkg -si
    popd > /dev/null
    echo "Installing AUR packages..."
    paru --sudoloop -S $(cat packages/aur)
if [[ -f /usr/bin/apt ]]; then
    sudo apt install $(cat packages/apt)
elif [[ $(uname -s) == "Darwin" ]]; then
    echo "Executing macOS script..."
    scripts/install-packages-macos.sh
else
    echo "Unknown distro!"
fi
