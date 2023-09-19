# !/bin/bash
sudo pmset -c disablesleep 1

echo "Install brew"
echo "Start ###########################################################"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# m1 brew path
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

echo "End #############################################################"


echo "Install apps by brew"
echo "Start ###########################################################"
while ! brew bundle --file=./Brewfile
do
    sleep 10
done

echo "End #############################################################"


echo "Environments"
echo "Start ###########################################################"

# install font
cp -a ./fonts/. ~/Library/Fonts

# Set screenshot folder
chmod 755 ./screenshot/install.sh
./screenshot/install.sh

# Change Git Default branch name
git config --global init.defaultBranch main
git config core.ignorecase false

echo "End #############################################################"


echo "Install Ruby"
echo "Start ###########################################################"

VERSION=3.2.2

rbenv install ${VERSION}
rbenv rehash

rbenv global ${VERSION}
rbenv rehash

echo "End #############################################################"


echo "Install zsh"
echo "Start ###########################################################"

chmod 755 ./zsh/install.sh
./zsh/install.sh

echo "End #############################################################"


echo "Install iTerms2"
echo "Start ###########################################################"

chmod 755 ./iterm2/install.sh
./iterm2/install.sh

echo "End #############################################################"


echo "Install VSCode"
echo "Start ###########################################################"

chmod 755 ./vscode/install.sh
./vscode/install.sh

echo "End #############################################################"


echo "Install XCode"
echo "Start ###########################################################"

chmod 755 ./xcode/install.sh
./xcode/install.sh

echo "End #############################################################"


echo "Install Fastlane"
echo "Start ###########################################################"

gem install fastlane -NV
rbenv rehash

echo "End #############################################################"


echo "Install Flutter"
echo "Start ###########################################################"

chmod 755 ./flutter/install.sh
./flutter/install.sh

echo "End #############################################################"


echo "Install Golang"
echo "Start ###########################################################"

chmod 755 ./go/install.sh
./go/install.sh
echo "End #############################################################"


# configure redis
#chmod 755 ./redis/install.sh
#./redis/install.sh


# Install Infra
#chmod 755 ./infra/install.sh
#./infra/install.sh


echo "Open app for settings"
echo "Start ###########################################################"

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

sudo xattr -dr com.apple.quarantine /Applications/Rectangle.app
open /Applications/Rectangle.app

sudo xattr -dr com.apple.quarantine /Applications/dbeaver.app
open /Applications/dbeaver.app

sudo xattr -dr com.apple.quarantine /Applications/figma.app
open /Applications/figma.app

echo "End #############################################################"


echo "Please change wallpaper"
echo "Right click on the desktop -> Change Wallpaper... -> Select Black color"

echo "Please change keyboard shortcuts by yourself."
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select the previous input source -> Change to Command + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select Next source input menu -> Change to Command + Shift + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Spotlight search -> Change to Option + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Finder search window -> Change to Command + Option + Space"

sudo pmset -c disablesleep 0
