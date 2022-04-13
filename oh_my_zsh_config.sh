# Install zsh, oh my zsh
printf '\033c'
echo 'Oh_My_zsh auto configuration file'

brew install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s 'which zsh'

# Setting plugins

#syntax highlightingh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf


# config the .zshrc file that add the plugins list
# plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf)
