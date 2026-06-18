# Enable starship
eval "$(starship init bash)"

# Enable fzf
eval "$(fzf --bash)"

# Set default editor to nvim
export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# General terminal aliases
alias cls='clear'
alias f='z'
alias fp='z ..'
alias fb='z -'
alias ff='fastfetch'
alias v='nvim .'

# Nix Related Aliases
alias nixRebuild='sudo nixos-rebuild switch'
alias nixTest='sudo nixos-rebuild test'
alias ns="nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history"
alias nixTemp='nix-shell -p'

# FZF Colour Scheme
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
#
# Enable zoxide (keep at bottom of config)
eval "$(zoxide init bash)"
