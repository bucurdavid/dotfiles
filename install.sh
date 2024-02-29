#!/bin/sh

echo "Setting up your Mac..."

# check for homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# install all our dependencies with bundle (see brewfile)
cd ~/.dotfiles
brew tap homebrew/bundle
brew bundle

brew cleanup

# set up development environment
./dev.sh

# removes .zshrc from $home (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.p10k.zsh
ln -s $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

# append aliases.zsh to .zshrc
cat $HOME/.dotfiles/aliases.zsh >> $HOME/.zshrc

source ~/.zshrc

# symlink the mackup config file to the home directory
# ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# set macos preferences - we will run this last because this will reload the shell
# source .macos
