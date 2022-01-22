#!/usr/bin/env bash 
echo "DS_Store go away!..."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Enabling battery percentage..."
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

echo "Showing all extensions..."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Setting purple accent color..."
defaults write NSGlobalDomain AppleAccentColor -integer 5

echo "Setting purple highlight color..."
defaults write NSGlobalDomain AppleHighlightColor -string "0.968627 0.831373 1.000000 Purple"

echo "Disabling auto-correct..."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Disabling auto-capitalization..."
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

echo "Disabling quote substitution..."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Disabling dash substitution..."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Put drives on desktop..."
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "Making finder better..."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarMediaBrowserSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true

echo "Moving dock to left of screen"
defaults write com.apple.dock orientation left


echo "Making the dock smaller..."
defaults write com.apple.dock tilesize -int 30
killall Dock
