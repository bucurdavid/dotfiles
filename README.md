Setting up your Mac
If you did all of the above you may now follow these install instructions to setup a new Mac.

Update macOS to the latest version with the App Store

Generate a new public and private SSH key by running:

curl https://raw.githubusercontent.com/bucurdavid/dotfiles/refs/heads/main/ssh.sh | sh -s "<your-email-address>"
Clone this repo to ~/dotfiles with:

git clone git@github.com:bucurdavid/dotfiles.git ~/dotfiles
Run ~/dotfiles/install.sh to start the installation

After mackup is synced with your cloud storage, restore preferences by running mackup restore

Restart your computer to finalize the process

Mac is now ready to use!
