# Herramientas
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
source <(fzf --zsh)

# Aliases
alias ls="eza --icons=auto"
alias ll="eza -la --git --icons=auto"
alias cat="bat --paging=never"
alias gs="git status"
alias gl="git log --oneline --graph -15"
alias dc="docker compose"
alias k="kubectl"
alias reload="source ~/.zshrc"
alias update="brew update && brew upgrade && brew cleanup"
export PATH="$HOME/.local/bin:$PATH"

# Secretos (no estan en el repo)
[ -f ~/.secrets ] && source ~/.secrets

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
