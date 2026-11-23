# Herramientas
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
source <(fzf --zsh)

# Aliases
alias ls="eza --icons"
alias ll="eza -la --git --icons"
alias cat="bat --paging=never"
alias gs="git status"
alias gl="git log --oneline --graph -15"
alias dc="docker compose"
alias k="kubectl"
alias reload="source ~/.zshrc"
alias update="brew update && brew upgrade && brew cleanup"
