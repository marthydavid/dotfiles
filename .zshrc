autoload -Uz compinit
compinit

setopt HIST_IGNORE_ALL_DUPS

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git ssh-agent)
source $ZSH/oh-my-zsh.sh

zstyle ':omz:lib:directories' aliases no
eval "$(starship init zsh)"
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source <(vcluster completion zsh)
source <(kubectl completion zsh)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/Users/$(whoami)/.rd/bin:$PATH"


alias cat="bat --paging never --theme "DarkNeon" --style plain"
eval $(thefuck --alias)
alias ls='eza --long --all --no-permissions --no-filesize --no-user --no-time --git'
alias lst='eza --long --all --no-permissions --no-filesize --no-user --git --sort modified'
alias ll='eza --long --all --git'
alias fzfp='fzf --preview \"bat --style numbers --color always {}\"'
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kubectl='kubecolor'
alias k='kubectl'
alias argocd='argocd --grpc-web'
compdef k='kubectl'
