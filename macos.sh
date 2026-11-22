#!/bin/bash
# Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Dock limpio
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.3
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock mru-spaces -bool false

# Teclado rapido y sin autocorrecciones
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Screenshots al portapapeles, sin sombra
defaults write com.apple.screencapture target clipboard
defaults write com.apple.screencapture disable-shadow -bool true

# Clic en el fondo de pantalla no esconde las ventanas
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false

killall Dock Finder SystemUIServer
echo "Listo. Algunos cambios requieren cerrar sesion."
