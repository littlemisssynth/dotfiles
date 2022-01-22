#!/usr/bin/env bash
# Make sure dotfiles repo is up to date
git pull
	
echo "Making all directories in home"
scripts/make-directories.sh

# Set default shell to bash
scripts/shell-bash.sh
echo "Done!"

# Configuring macOS
if [[ $(uname -s) == "Darwin" ]]; then
    echo "macOS detected, running configure script..."
    scripts/configure_macos_defaults.sh
fi
