✨ My Dotfiles

This repository contains:
✅ My personal dotfiles for setting up a new system quickly and consistently.
✅ Installation scripts to automate the installation of essential programs and configurations.
📦 What’s Included?

This repository includes configurations for:

    🐚 Zsh → Custom shell setup with plugins and Starship prompt
    🎨 Terminator → Custom terminal theme
    🚀 Starship → Fast, minimal prompt for the terminal
    🛠 Git → Useful aliases & settings for improved workflow
    📂 Stow → Symlink manager for easily organizing dotfiles

Additionally, installation scripts for setting up all required software and utilities are located inside the bin/ folder.
📜 Installation Scripts
1️⃣ setup.sh → Main System Setup Script

This script installs my essential software and ensures my system is ready for development.
📌 What It Does

    📌 Updates & upgrades the system (apt update && apt upgrade).
    📌 Installs system utilities and apps via snap and apt.
    📌 Sets up the following software:

| 📦 Software | 📝 Description |
|------------|--------------|
| **DBeaver** | Database management tool |
| **VS Code** | Code editor with extensions |
| **Postman** | API testing tool |
| **Obsidian** | Knowledge management & note-taking |
| **Spotify** | Music streaming |
| **Slack** | Team communication |
| **Zoom** | Video conferencing |
| **Terminator** | Terminal emulator with advanced features |
| **Starship** | Fast & customizable terminal prompt |
| **Librewolf** | Privacy-focused Firefox fork |
| **GNU Stow** | Manages dotfiles using symlinks |

`chmod +x bin/setup.sh`
`./bin/setup.sh`

2️⃣ zsh-plugins-install.sh → Install Zsh Plugins

This script installs essential Zsh plugins to enhance shell usability.
📌 What It Does

    ✅ Ensures the ~/.zsh/ directory exists.
    ✅ Installs the following Zsh plugins (if not already installed):

| 🔌 Plugin | 📝 Description |
|----------|--------------|
| **zsh-autosuggestions** | Suggests commands based on history |
| **zsh-syntax-highlighting** | Colors commands for better readability |

    ✅ Ensures plugins are sourced in ~/.zshrc.

🚀 How to Run It

`chmod +x bin/zsh-plugins-install.sh`
`./bin/zsh-plugins-install.sh`

3️⃣ install-fonts.sh → Install Fonts

This script installs all fonts inside the fonts/ directory.
📌 What It Installs

    ✨ Firacode Nerd Font → A font with ligatures and icons for better development experience.

🚀 How to Run It

`chmod +x bin/install-fonts.sh`
`./bin/install-fonts.sh`

🔗 Dotfiles Management with Stow

This repository uses GNU Stow to manage dotfiles efficiently with symlinks.
📌 How to Apply Dotfiles

`stow -v -t ~ zsh terminator starship git`

This will symlink the configuration files to the correct locations.
📌 How to Remove Dotfiles

`stow -D zsh terminator starship git`

