# !/bin/bash
sudo pmset -c disablesleep 1

echo "Install brew"
echo "Start ###########################################################"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# m1 brew path
if [[ $(uname -m) == 'arm64' ]]; then
echo "Setting Brew on ARM64 ###########################################################"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$USER/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.zshrc
echo "End ###########################################################"
fi

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

# Key Binding
cp ./KeyBindings/DefaultkeyBinding.dict ~/Library/DefaultkeyBinding.dict

echo "End #############################################################"


echo "Install Ruby"
echo "Start ###########################################################"

chmod 755 ./ruby/install.sh
./ruby/install.sh

echo "End #############################################################"


echo "Install zsh"
echo "Start ###########################################################"

chmod 755 ./zsh/install.sh
./zsh/install.sh

echo "End #############################################################"


echo "Install XCode"
echo "Start ###########################################################"

chmod 755 ./xcode/install.sh
./xcode/install.sh

echo "End #############################################################"


echo "Install VSCode"
echo "Start ###########################################################"

chmod 755 ./vscode/install.sh
./vscode/install.sh

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


echo "Install Fastlane"
echo "Start ###########################################################"

gem install fastlane -NV
rbenv rehash

echo "End #############################################################"


echo "Keep in Dock"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
./macos/dock.sh

echo "End #############################################################"


echo "Congiguration for Mac"
echo "Start ###########################################################"

chmod 755 ./macos/dock.sh
zsh ./macos/dock.sh

chmod 755 ./macos/touchpad.sh
zsh ./macos/touchpad.sh

echo "End #############################################################"


echo "Open app for settings"
echo "Start ###########################################################"

sudo xattr -dr com.apple.quarantine /Applications/Raycast.app
open /Applications/Raycast.app

sudo xattr -dr com.apple.quarantine /Applications/Hidden\ Bar.app
open /Applications/Hidden\ Bar.app

sudo xattr -dr com.apple.quarantine /Applications/MonitorControl.app
open /Applications/MonitorControl.app

sudo xattr -dr com.apple.quarantine /Applications/Stats.app
open /Applications/Stats.app

sudo xattr -dr com.apple.quarantine /Applications/Itsycal.app
open /Applications/Itsycal.app

sudo xattr -dr com.apple.quarantine /Applications/Android\ Studio.app
open /Applications/Android\ Studio.app

sudo xattr -dr com.apple.quarantine /Applications/Rectangle.app
open /Applications/Rectangle.app

sudo xattr -dr com.apple.quarantine /Applications/Shottr.app
open /Applications/Shottr.app

echo "End #############################################################"


echo "Please change keyboard shortcuts by yourself."
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select the previous input source -> Change to Command + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Input Sources -> Select Next source input menu -> Change to Command + Shift + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Spotlight search -> Change to Option + Space"
echo "Oepn System Settings -> Keyboard -> Keyboard Shortcuts... -> Spotlight -> Show Finder search window -> Change to Command + Option + Space"

sudo pmset -c disablesleep 0
