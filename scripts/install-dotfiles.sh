#!/usr/bin/env bash
git submodule update --init --depth 1
cp -v dotfiles/tmux.conf ~/.tmux.conf
cp -v dotfiles/Xresources ~/.Xresources
mkdir -p ~/.config
cp -vr dotfiles/config/* ~/.config/
if [ "$(whoami)" == Leah ]; then
    cp -vr dotfiles/gitconfig ~/.gitconfig
elif [ "$(whoami)" == leah ]; then
    cp -vr dotfiles/gitconfig ~/.gitconfig
fi
