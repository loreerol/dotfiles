# Created by newuser for 5.8.1
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2024-12-12 00:24:50
export PATH="$PATH:/home/lhill/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Increase history size
HISTSIZE=100000                 # Number of commands to keep in memory
SAVEHIST=100000                 # Number of commands to save in the history file

# History file location
HISTFILE=~/.zsh_history         # Where history is stored

# Improve history behavior
setopt INC_APPEND_HISTORY        # Save each command to history immediately
setopt SHARE_HISTORY             # Share history between multiple Zsh sessions
setopt APPEND_HISTORY            # Append history instead of overwriting
setopt EXTENDED_HISTORY          # Save timestamp and execution duration
setopt HIST_IGNORE_DUPS          # Ignore duplicate commands
setopt HIST_IGNORE_ALL_DUPS      # Remove old duplicates, keeping only the most recent one
setopt HIST_IGNORE_SPACE         # Ignore commands that start with a space
setopt HIST_SAVE_NO_DUPS         # Do not save duplicate commands
setopt HIST_EXPIRE_DUPS_FIRST    # Expire oldest duplicate commands first
setopt HIST_VERIFY               # Require confirmation before running history expansion
setopt HIST_REDUCE_BLANKS        # Remove extra spaces from commands

# set titlebar title to current directory
autoload -Uz add-zsh-hook
function set-terminal-title() {
  print -Pn "\e]0;${PWD##*/}\a"
}
add-zsh-hook precmd set-terminal-title

# use starship
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"
[[ -f ~/.zsh_plugins.sh ]] && source ~/.zsh_plugins.sh
