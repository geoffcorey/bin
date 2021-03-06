#/bin/bash
brew install tmux fontconfig jq ncurses openssl python3 freetype gnupg neovim	pass vcsh go node wget git mr the_silver_searcher ctags
pip3 install neovim
npm install -g fx vtop jsbeautify neovim loopback-cli eslint markdownlint npx
pip3 install --user pynvim
nvim +PlugInstall
nvim +UpdateRemotePlugins
nvim +PlugUpdate
#curl https://install.meteor.com/ | sh
#brew tap cantino/mcfly https://github.com/cantino/mcfly
#brew install mcfly
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
brew cask install alacritty
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install python-yq
brew install kubectx
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
mkdir -p ~/src/github.com/razee-io
git clone https://github.com/razee-io/Kube-cloud-scripts.git ~/src/github.com/razee-io/
