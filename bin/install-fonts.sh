#!/usr/bin/env bash
set -e  # Exit on error

echo "Installing fonts from local zip files..."

# Define font source directory inside dotfiles repo
FONT_SOURCE_DIR=../fonts

# Define font installation directory
FONT_INSTALL_DIR=~/.local/share/fonts

# Ensure font install directory exists
mkdir -p "$FONT_INSTALL_DIR"

# Loop through all font zip files in the fonts directory
for font_zip in "$FONT_SOURCE_DIR"/*.zip; do
    if [[ -f "$font_zip" ]]; then
        echo "Installing $(basename "$font_zip")..."
        unzip -o "$font_zip" -d "$FONT_INSTALL_DIR"
    else
        echo "No zip files found in $FONT_SOURCE_DIR."
    fi
done

# Refresh font cache so the system recognizes the new fonts
fc-cache -fv

echo "Fonts installed successfully!"