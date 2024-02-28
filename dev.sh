#!/bin/sh

echo "Setting up development environment..."

export CODE=$HOME/dev


# Check if the 'dev' directory exists
if [ ! -d "$CODE" ]; then
    # If it doesn't exist, create it
    mkdir -p "$CODE"
    echo "Directory 'dev' created."
else
    echo "Directory 'dev' already exists."
fi

# set default mysql root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"


# install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k


# multiversx
pipx install multiversx-sdk-cli --force

pipx ensurepath


mxpy deps install all

# install global npm packages
npm install -g ts-node
npm install -g npm-check-updates