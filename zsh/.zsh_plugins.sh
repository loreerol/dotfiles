# ~/.zsh_plugins.sh
# Load Zsh plugins

# Zsh Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

# Zsh Syntax Highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[comment]='fg=blue'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=magenta'

# Zsh Autocomplete (must be loaded last)
#source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
