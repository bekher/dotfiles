#!/bin/bash
# TODO: this is untested, need to wipe a macbook and run this

BREW_APPS="thefuck cowsay lolcat imagemagick mosh the_silver_searcher postgresql tree"
BREW_CASK_APPS="google-chrome slack alfred spectacle spotify itsycal iterm2 graphql-playground visual-studio-code"

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

## Install brew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

## Dev apps 
brew install ${BREW_APPS}
brew cask install ${BREW_CASK_APPS}

## Wire up
source ~/.bash_profile
source ~/.bashrc

# Filesystem
mkdir ~/Development ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
