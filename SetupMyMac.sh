#! /bin/bash

# Start Terminal
# chmod +x SetupMyMac.sh
# ./SetupMyMac.shs


if [ ! -f /usr/local/bin/brew ]; then
    	echo "Homebrew isn't installed - installing now"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	echo "Homebrew found!"
fi


brew install tree

#better window management:
brew cask install rectangle

# remaps keys:
brew cask install karabiner-elements 

brew cask install dropbox


brew install git

brew install node

brew install yarn

# easier command-line editor than vim:
brew install emacs
brew services start emacs



brew cask install google-chrome

brew cask install visual-studio-code 

# App Store apps:
# brew install mas

# Pages
# mas install 409201541


# Next, run these to trigger the security settings so they can run all the time:
# (Use Command-space)
# rectangle
# karabiner-elements