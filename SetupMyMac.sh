#!/usr/bin/env bash

# Usage:
# Start Terminal
# chmod +x SetupMyMac.sh
# ./SetupMyMac.sh

# Sign into the Mac App Store (otherwise we can't install anything that starts with "gas", below)


# Next steps:

# How to install software from .dmg on the command line:
# https://zeckli.github.io/en/2017/10/06/mac-install-dmg-through-command-line-en.html

# Software to install from .dmg files:
# 		None! :)



# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

########################## Bootstrapping ##########################################
# First, get Homebrew:

# Install XCode tools (I'm pretty sure this includes git)
# Homebrew requires this
xcode-select --install  


if [ ! -f /usr/local/bin/brew ]; then
    	echo "Homebrew isn't installed - installing now"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	echo "Homebrew found!"
fi

# Next, use homebrew to get a browsers, which is where I keep all my passwords:
brew install --cask google-chrome

#brew install --cask microsoft-edge

# Next, install DropBox, which contains my home directory:
brew install --cask dropbox
# TODO: install the DropBox desktop app?
# https://www.dropbox.com/downloading
# https://help.dropbox.com/en-us/files-folders/restore-delete/ignored-files



########################## App Store ##########################################
# installs App Store apps:
brew install mas

# MS OneNote
mas install 784801555

# Pages
# mas install 409201541

# Monosnap - screen recording tool (also screenshots)
mas install 540348655

# Giphy capture, to make GIFs
mas install 668208984

###### Screen Annotation:

# SwordSoft Screenink Free
mas install 953841977

# Epic Pen:
# mas install 1523853410

# Screenbrush:
mas install 1233965871

# Mouse Locator:
# NOTE: Doesn't work with current MacOS (May 2021)
brew install --cask mouse-locator


########################## System upgrades ##################################

# Linux CLI command to display files and dirs in a 'tree' format:
# ├── Curriculum
# │   ├── CODE_OF_CONDUCT.md
# │   ├── CONTRIBUTING.md
# │   ├── Curriculum\ maintenance
# │   │   ├── Coaches\ Guide.md
# │   │   ├── Ob\ suggested\ Curriculum.md
brew install tree

# Navigate directories using a tree-list CLI:
# https://dystroy.org/broot/
brew install broot

#better window management:
brew install --cask rectangle

# remaps keys:
# Useful for using PC keyboards with Mac
brew install --cask karabiner-elements 

#clipboard management:
brew install --cask jumpcut

# Fix mouse-wheel scrolling for non-Apple mice:
# SmoothScroll is nicer, but it's also paid software (it does have a free trial)
# brew install --cask smoothscroll

# another option:
#brew install --cask discretescroll
# (Not as nice, but definitely fixes the problem w/ MacOS applying acceleration per wheel 'tick')

# Let's try this one? 
brew install --cask linearmouse

# Date & time in the menu bar, click to see calendar
# using Lilius:
mas install 1459465139

# alt-tab makes command-tab work like it does on Windows:
brew install --cask alt-tab

# Dual-pane file manager
brew install --cask double-commander

# Command line jump to dir:
brew install cdargs



# oh-my-zsh
# https://ohmyz.sh/#install
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

########################## Development ##################################

brew install git

git config --global user.name "Mike Panitz"
git config --global user.email "michpa@hotmail.com"

# use 'main' instead of 'master' when creating new repos:
git config --global init.defaultBranch main

brew install node
brew install yarn

# graphical diff tool:
brew install --cask meld

brew install --cask iterm2

brew install --cask visual-studio-code 

# Markdown editor:
#brew install --cask typora # now requires purchase
# brew install --cask yu-writer # really nice EXCEPT that it kept copying images into $resources subfolder
# brew install --cask abricotine # pretty nice, but didn't actually do the Live Preview thing
brew install --cask mark-text

# Different Markdown editor:
# brew install --cask Zettlr

########################## Screen recording ##################################

# Open Broadcaster Suite
brew install --cask obs

# Shotcut:
brew install --cask shotcut

########################## Comms ##############################################
brew install --cask microsoft-teams

brew install --cask zoom

# Outlook:
mas install 985367838

#Slack:
mas install 803453959


############################ MacOS Defaults ###################################
# Helpful links:
# https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/

# Example setup files:
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# https://wilsonmar.github.io/dotfiles/
# https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh


# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool YES

# Also show the 'Library' folder all the time:
chflags nohidden ~/Library/

# Show the /Volumes folder
sudo chflags nohidden /Volumes


##############################################################################
# the following is from
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# 
# Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" "


# Set highlight color to green
#defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"
# color is set using HSL code


# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true


# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false


# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "America/Los_Angeles" > /dev/null

# Gimme a sec to stop the screensaver from demanding a password
defaults write com.apple.screensaver askForPasswordDelay -int 5


# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Automatically download apps purchased on other Macs
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

###############################################################################
# Google Chrome & Google Chrome Canary                                        #
###############################################################################

# Use the system-native print preview dialog
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

# Expand the print dialog by default
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true


###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"SystemUIServer" # \
	# "Terminal"; # We should quit this too, but we're probably using it to install everything :(
do
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."

# TODO
# Next, run these to trigger the security settings so they can run all the time:
# (Use Command-space)
# rectangle
# karabiner-elements

########################## Org Mode ###########################################

#Try this instead:
brew install --cask obsidian

# Emacs-plus:
#brew tap d12frosted/emacs-plus
#brew install emacs-plus
#ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications/Emacs.app

# straight.el gets installed outside of DropBox:
#mkdir ~/emacs_straight
#chmod 777 ~/emacs_straight


echo -n "Press the 'Return' key once you've downloaded the 'home' directory from DropBox into ~/DropBox/home.  "
read answer
echo "Great, proceeding with installation"

# Link the .emacs.d into my DropBox copy:
#ln -s ~/Dropbox/Personal/home/.emacs.d ~/.emacs.d

# For MacOS GUI apps we'll need to set these another way:
# http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-mac-os-x-launchd-plist/
# cat << EOF | sudo tee /Library/LaunchDaemons/setenv.EMACS_COMPUTER_SPECIFIC_CONFIG.plist
# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#   <plist version="1.0">
#   <dict>
#   <key>Label</key>
#   <string>setenv.BAR</string>
#   <key>ProgramArguments</key>
#   <array>
#     <string>/bin/launchctl</string>
#     <string>setenv</string>
#     <string>EMACS_COMPUTER_SPECIFIC_CONFIG</string>
#     <string>~/.emacs.d/Computer_Specific_Config_Files/TNT_Macbook</string>
#   </array>
#   <key>RunAtLoad</key>
#   <true/>
#   <key>ServiceIPC</key>
#   <false/>
# </dict>
# </plist>
# EOF

# launchctl load -w /Library/LaunchDaemons/setenv.EMACS_COMPUTER_SPECIFIC_CONFIG.plist


# brew services start emacs-plus

# There are emacs reminders printed out at the end of this script


############################ Configure shells ########################################

ln -s ~/Dropbox/Personal/home/.bashrc ~/.bashrc
ln -s ~/Dropbox/Personal/home/.zshrc ~/.zshrc
ln -s ~/DropBox/Personal/home/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/DropBox/Personal/home/.ohMyZshMike ~/.ohMyZshMike

brew install fzf

############################ Reminders ########################################
# echo "REMEMBER: Set up the environment variables that emacs needs"
# echo "namely,"
# echo "EMACS_COMPUTER_SPECIFIC_CONFIG"
# echo "Remember that there's example configs inside ~/.emacs.d/Computer_Specific_Config_Files"
