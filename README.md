## ✨ Lore's Dotfiles ✨

Here you will find: 
- Installation scipts for the software I always use.
- My dotfiles for applying configurations.

## Step 1 - Install software

This script will:

    🐸 Update & upgrade the system (apt update && apt upgrade)
    🐸 Install system utilities and apps via snap and apt
    🐸 Set up the following software

| 👾 Software | 📜 Description |
|------------|--------------|
| **DBeaver** | Database management tool |
| **VS Code** | Code editor with extensions |
| **Postman** | API testing tool |
| **Obsidian** | Notes application |
| **Spotify** | Music streaming |
| **Slack** | Work chat |
| **Zoom** | Work video chat |
| **Terminator** | Terminal emulator |
| **Starship** | Customizable terminal prompt |
| **Librewolf** | Privacy-focused Firefox fork |
| **GNU Stow** | Manages dotfiles using symlinks |

### Running the script
```
chmod +x bin/install.sh
./bin/install.sh
```

## Step 2 - Install Zsh Plugins
This script will:

    🐸 Ensure the ~/.zsh/ directory exists
    🐸 Install the following Zsh plugins (if not already installed)
    🐸 Ensure plugins are sourced in ~/.zshrc

| 🔌 Plugin | 📜 Description |
|----------|--------------|
| **zsh-autosuggestions** | Suggests commands based on history |
| **zsh-syntax-highlighting** | Colors commands for better readability |

### Running the script

```
chmod +x bin/zsh-plugins-install.sh
./bin/zsh-plugins-install.sh
```

## Step 3 - Install fonts

This script will:

    🐸 Install the FiraCode font

### Running the script
```
chmod +x bin/install-fonts.sh
./bin/install-fonts.sh
```

## Step 4 - Apply Dotfiles!

This script will: 

    🐸 Symlink config files to their correct locations

### Apply the configurations
```
stow -v -t ~ zsh terminator starship git
```
### Removing the configurations
```
stow -D zsh terminator starship git
```

