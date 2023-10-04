# !/bin/bash

#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions

#install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting

# install zsh theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH/themes/powerlevel10k

# copy my zsh settings
cp ./zsh/.zshrc ~/.zshrc

chsh -s /bin/zsh
source ~/.zshrc
