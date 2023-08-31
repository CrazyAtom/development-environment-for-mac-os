# !/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# m1 brew path
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# install via brew
brew bundle --file=./Brewfile

VERSION=3.1.2

rbenv install ${VERSION}
rbenv rehash

rbenv global ${VERSION}
rbenv rehash

sudo xattr -dr com.apple.quarantine /Applications/Fork.app
open /Applications/Fork.app
sudo xattr -dr com.apple.quarantine /Applications/Itsycal.app
open /Applications/Itsycal.app
sudo xattr -dr com.apple.quarantine /Applications/Hidden\ Bar.app
open /Applications/Hidden\ Bar.app
sudo xattr -dr com.apple.quarantine /Applications/MonitorControl.app
open /Applications/MonitorControl.app
sudo xattr -dr com.apple.quarantine /Applications/Raycast.app
open /Applications/Raycast.app
sudo xattr -dr com.apple.quarantine /Applications/Stats.app
open /Applications/Stats.app
sudo xattr -dr com.apple.quarantine /Applications/Keka.app
open /Applications/Keka.app
sudo xattr -dr com.apple.quarantine /Applications/AppCleaner.app
open /Applications/AppCleaner.app
sudo xattr -dr com.apple.quarantine /Applications/MySQLWorkbench.app
open /Applications/MySQLWorkbench.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
open /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
open /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
open /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/meld.app
open /Applications/meld.app
sudo xattr -dr com.apple.quarantine /Applications/docker.app
open /Applications/docker.app
sudo xattr -dr com.apple.quarantine /Applications/dbeaver.app
open /Applications/dbeaver.app
sudo xattr -dr com.apple.quarantine /Applications/figma.app
open /Applications/figma.app

# install font
cp -a ./fonts/. ~/Library/Fonts

# configure zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh

# configure VSCode
chmod 755 ./vscode/install.sh
./vscode/install.sh

# copy iterm2 configuration
chmod 755 ./iterm2/install.sh
./iterm2/install.sh

# install xcode
chmod 755 ./xcode/install.sh
./xcode/install.sh

# install fastlane
gem install fastlane -NV
rbenv rehash

# configure redis
chmod 755 ./redis/install.sh
./redis/install.sh

# Set screenshot folder
chmod 755 ./screenshot/install.sh
./screenshot/install.sh

# Install Flutter
chmod 755 ./flutter/install.sh
./flutter/install.sh

# Install Infra
chmod 755 ./infra/install.sh
./infra/install.sh

# Install go
chmod 755 ./go/install.sh
./go/install.sh

# Change Git Default branch name
git config --global init.defaultBranch main
git config core.ignorecase false

# copy keybindings
cp -R ./KeyBindings ~/Library/