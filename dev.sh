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

#solana
sh -c "$(curl -sSfL https://release.solana.com/v1.18.4/install)"
cargo install --git https://github.com/coral-xyz/anchor avm --locked --force

pipx ensurepath


mxpy deps install all

# install global npm packages
npm install -g ts-node
npm install -g npm-check-updates


cd "$CODE"

git clone git@github.com:bucurdavid/DynamicNotch.git apple/NotchDrop
git clone https://github.com/Kyle-Ye/iPhoneMirroringInject.git apple/iPhoneMirroringInject
git clone git@github.com:bucurdavid/auto-data-generation-action.git auto-data-generation-action
git clone git@github.com:bucurdavid/mx-sdk-rs.git multiversx/mx-sdk-rs
git clone git@github.com:bucurdavid/dotfiles.git dotfiles
git clone git@github.com:bucurdavid/inscriptions-dapp.git inscriptions/inscriptions-dapp
git clone git@github.com:bucurdavid/inscriptions-indexer.git inscriptions/inscriptions-indexer
git clone git@github.com:damienen/dex-api.git projects/dex-api-copy/dex-api
git clone git@github.com:bshiftio/burnify-program.git sol/burnify/burnify-program
git clone git@github.com:bshiftio/burnify-price-api.git sol/burnify/burnify-price-api
git clone git@github.com:bucurdavid/solana-sniper-bot.git sol/solana-sniper-bot
git clone git@github.com:bucurdavid/liquid-esdt-staking-sc.git liquid-esdt-staking-sc
git clone git@github.com:bucurdavid/dao-sc.git peer/dao-sc
git clone git@github.com:bucurdavid/identity-sc.git peer/identity-sc
git clone git@github.com:bucurdavid/vehick_website.git vehick_website
git clone git@github.com:bucurdavid/mx-mini-app.git mx-mini-app
git clone git@github.com:bucurdavid/vapor-republic-contract.git vapor-republic-redemption-contract
git clone git@github.com:bucurdavid/mx-liquid-staking-sc.git mx-liquid-staking-sc
git clone https://github.com/mvines/solana-cli-template.git solana-cli-template
git clone git@github.com:bucurdavid/licenta-market-sc.git licenta/market-sc
git clone git@github.com:bucurdavid/licenta-dapp.git licenta/dapp
git clone git@github.com:bucurdavid/licenta-car-data-sc.git licenta/car-data-sc
git clone git@github.com:bucurdavid/licenta-minter-sc.git licenta/minter-sc
git clone git@github.com:bucurdavid/licenta-dapp.git licenta/dapp-retry
git clone git@github.com:damienen/reputation-system.git reputation-system
git clone git@github.com:Itheum/core-sol-volume-bot.git itheum/volume-bot
git clone git@github.com:Itheum/core-mx-bridge-sc.git itheum/core-mx-bridge-sc
git clone git@github.com:Itheum/core-bridge-dapp.git itheum/core-bridge-dapp
git clone git@github.com:Itheum/sdk-mx-enterprise.git itheum/sdk-mx-enterprise
git clone git@github.com:Itheum/core-mx-datamarshal-brontes-service.git itheum/core-mx-datamarshal-brontes-service
git clone git@github.com:Itheum/util-snippets-sol.git itheum/admin-token-cli
git clone git@github.com:Itheum/sdk-mx-data-nft.git itheum/sdk-mx-data-nft
git clone git@github.com:Itheum/core-mx-life-bonding-sc.git itheum/core-mx-life-bonding-sc
git clone git@github.com:Itheum/itheumcore-elrond-data-nft-marketplace.git itheum/itheumcore-elrond-data-nft-marketplace
git clone git@github.com:Itheum/explorer-dapp.git itheum/explorer-dapp
git clone git@github.com:Itheum/core-mx-data-nft-minter-nft-sc.git itheum/core-mx-data-nft-minter-nft-sc
git clone git@github.com:Itheum/core-mx-minter-factory-sc.git itheum/core-mx-minter-factory-sc
git clone git@github.com:Itheum/core-mx-soulbound-badges-sc.git itheum/core-mx-soulbound-badges-sc
git clone git@github.com:Itheum/data-dex.git itheum/data-dex
git clone git@github.com:Itheum/itheumcore-elrond-data-nft-minter.git itheum/itheumcore-elrond-data-nft-minter
git clone git@github.com:Itheum/core-sol-bridge-sc.git itheum/core-sol-bridge-sc
git clone git@github.com:Itheum/sdk-data-marshal-network.git itheum/sdk-marshal
git clone git@github.com:Itheum/core-sol-bonding-staking-sc.git itheum/core-sol-bond-stake-sc
git clone git@github.com:Itheum/core-mx-web2-backend-service.git itheum/core-mx-web2-backend-service
git clone git@github.com:Itheum/core-mx-bonding-staking.git itheum/bond-stake
git clone git@github.com:damienen/saga-sc.git saga-festival/saga-contract
git clone git@github.com:damienen/saga-be.git saga-festival/saga-backend
git clone git@github.com:zedgehorizon/zstorage.git zedge-horizon/zstorage
git clone git@github.com:zedgehorizon/zsuite-backend.git zedge-horizon/zsuite-backend