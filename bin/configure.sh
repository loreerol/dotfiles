#!/usr/bin/env bash

# Do the install step first ok!

######################################################
# Shell stuff
######################################################

# Change default shell to zsh (for current user)
chsh -s "$(which zsh)"

# Use starship
eval "$(starship init zsh)"
