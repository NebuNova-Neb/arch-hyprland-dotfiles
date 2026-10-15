# Initialize Zsh autocompletion (if not already handled by Oh My Zsh)
autoload -Uz compinit && compinit

# Force sudo completion to respect your current user PATH
zstyle ':completion:*:sudo:*' environ PATH="$SUDO_PATH:$PATH"

# Where to save history on disk
HISTFILE=~/.zsh_history

# How many commands to keep in memory vs. on disk
HISTSIZE=100000
SAVEHIST=100000

zstyle ':completion:*' menu select

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

setopt correct

fastfetch

eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
