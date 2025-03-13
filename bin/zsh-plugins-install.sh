#!/usr/bin/env bash
set -e  # Exit on error

echo "Installing and configuring Zsh plugins..."

# Ensure the Zsh plugin directory exists
mkdir -p ~/.zsh

# Function to install a plugin if it's not already installed
install_plugin() {
    local plugin_name=$1
    local repo_url=$2
    local plugin_dir="$HOME/.zsh/$plugin_name"

    if [ ! -d "$plugin_dir" ]; then
        echo "Installing $plugin_name..."
        git clone --depth=1 "$repo_url" "$plugin_dir"
    else
        echo "$plugin_name is already installed. Skipping..."
    fi
}

# Install plugins
install_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
install_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting"

# Ensure ~/.zsh_plugins.sh is sourced in ~/.zshrc
if ! grep -q "source ~/.zsh_plugins.sh" ~/.zshrc; then
    echo '[[ -f ~/.zsh_plugins.sh ]] && source ~/.zsh_plugins.sh' >> ~/.zshrc
fi

echo "Zsh plugins installed successfully! 🚀"
