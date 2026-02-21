# -------
# Oh My Zsh
# -------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# -------
# General
# -------
export EDITOR='nvim'
export COREPACK_ENABLE_AUTO_PIN=0

# -------
# Aliases
# -------
alias l="ls"
alias ll="ls -al"
alias c="clear"
alias vim=nvim

# -------
# pnpm
# -------
alias p="pnpm"
alias pi="pnpm install"
alias pa="pnpm add"
alias pd="pnpm dev"
alias pb="pnpm build"
alias pr="pnpm run"
alias psd="pnpm start:dev"

# -------
# Git
# -------
alias gi='git init'
alias gro='git remote add origin'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push'
alias gpsho='git push -u origin'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias lgt=lazygit

# -------
# Docker
# -------
alias d='docker'
alias dps='docker ps'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dcud='docker compose up -d'

# -------
# Kubernetes
# -------
alias k='kubectl'
alias kc='kubectl'
alias kctx='kubectl config use-context'
alias kctxl='kubectl config get-contexts'
alias kctxd='kubectl config delete-context'

# -------
# PATH
# -------
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# -------
# pnpm
# -------
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# -------
# Secrets (never commit this file)
# -------
[[ -f ~/.zshrc.secrets ]] && source ~/.zshrc.secrets

# Load local overrides (machine-specific, not in dotfiles)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
