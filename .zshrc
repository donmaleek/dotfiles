plugins=(git zsh-autosuggestions)
eval "$(starship init zsh)"
# Enable Zsh plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

# Aliases for productivity
alias ls="exa --icons"
alias ll="exa -lh --icons"
alias la="exa -lha --icons"
alias cat="bat --style=plain"
alias ..="cd .."
alias ...="cd ../.."
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias myip="curl ifconfig.me"

# Starship Prompt
eval "$(starship init zsh)"

# Enable fzf keybindings
source /usr/share/doc/fzf/examples/key-bindings.zsh

