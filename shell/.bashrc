# Enable starship 
eval "$(starship init bash)"

# General terminal aliases 
alias cls='clear' 
alias f='z' 
alias fp='z ..' 
alias fb='z -' 

# Nix Related Aliases 
alias nixRebuild='sudo nixos-rebuild switch'
alias ns="nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history"

# Enable zoxide (keep at bottom of config)
eval "$(zoxide init bash)"
