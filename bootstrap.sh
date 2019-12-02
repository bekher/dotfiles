#!/bin/bash
# TODO: this is untested, need to wipe a macbook and run this

BREW_APPS="thefuck cowsay lolcat imagemagick mosh the_silver_searcher postgresql tree python3 fish wget"
BREW_CASK_APPS="google-chrome slack alfred spectacle spotify itsycal iterm2 graphql-playground visual-studio-code teamviewer slack transmission"

## Move dotfiles
git clone git://github.com/bekher/vim.git ~/.vim
cp ~/.vim/.vimrc ~/.vimrc

cat .bash_profile >> ~/.bash_profile

# Development
## Dependencies
xcode-select --install

## Nodejs
nvm install --lts
nvm use --lts

## Install apps 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

## Dev apps 
brew install ${BREW_APPS}
brew cask install ${BREW_CASK_APPS}

## Wire up
source ~/.bash_profile
source ~/.bashrc

## Node stuff
npm i -g yarn

# Filesystem
mkdir ~/Development ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
