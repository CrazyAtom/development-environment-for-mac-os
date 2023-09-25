defaults write com.apple.dock show-recents -bool false

defaults write com.apple.dock persistent-apps -array
sleep 10
killall Dock
apps=(
  "/System/Applications/Launchpad.app"
  "/System/Volumes/Preboot/Cryptexes/App/System/Applications/Safari.app"
  "/Applications/Google Chrome.app"
  "/Applications/Visual Studio Code.app"
  "/Applications/MySQLWorkbench.app"
  "/Applications/Figma.app"
  "/Applications/Postman.app"
  "/Applications/Fork.app"
  "/Applications/Keka.app"
  "/Applications/AppCleaner.app"
  "/System/Library/CoreServices/Applications/Screen Sharing.app"
)
for app in "${apps[@]}"; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>${app}</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done
sleep 10
killall Dock
