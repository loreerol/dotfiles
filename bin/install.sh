#!/usr/bin/env bash
#
# setup.sh: Install the things I like

# Exit immediately if something goes wrong
set -e

# Update and upgrade
sudo apt update
sudo apt upgrade -y

######################################################
# Install the things
######################################################

# Make sure snap is installed
echo "Installing snap..."
sudo apt install -y snapd
echo "Installed snap!"

# DBeaver 
echo "Installing DBeaver..."
sudo snap install dbeaver-ce
echo "Installed DBeaver!"

# VS Code
echo "Installing VS Code..."
sudo snap install code --classic
echo "Installed VS Code!"

# Postman
echo "Installing Postman..."
sudo snap install postman
echo "Installed Postman!"

# Obsidian
echo "Installing Obsidian..."
sudo snap install obsidian --classic
echo "Installed Obsidian!"

# Spotify
echo "Installing Spotify..."
sudo snap install spotify
echo "Installed Spotify!"

# Slack
echo "Installing Slack..."
sudo snap install slack --classic
echo "Installed Slack!"

# Zoom
echo "Installing Zoom..."
sudo snap install zoom-client
echo "Installed Zoom!"

# Terminator
echo "Installing Terminator..."
sudo apt install -y terminator
echo "Installed Terminator!"

# Spaceship for termnial
echo "Installing Spaceship..."
curl -fsSL https://starship.rs/install.sh | sh -s -- -y
echo "Installed Spaceship!"

# Librewolf
echo "Installing Librewolf..."
wget https://deb.librewolf.net/keyring.gpg
sudo gpg --dearmor --yes -o /usr/share/keyrings/librewolf.gpg keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/librewolf.gpg] http://deb.librewolf.net $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/librewolf.list
sudo apt install -y librewolf
echo "Installed Librewolf!"

# stow
echo "Installing Stow..."
sudo apt install stow -y
echo "Installed Stow!"

######################################################
# Tidy up
######################################################
echo "Tidying up..."
sudo apt autoremove -y
rm -f keyring.gpg

echo "Great Success!"
