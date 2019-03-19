# == Colors ===========================================
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true


# == Alias ============================================

alias ll='ls -la'
alias pzip='sh $HOME/dotfiles/shell/pzip.sh $1'
alias translate='sh $HOME/dotfiles/shell/translate.sh $1'
alias geocoding='sh $HOME/dotfiles/shell/geocoding.sh $1'


setopt correct

# == compinit =========================================
autoload -U compinit; compinit
setopt auto_list


autoload colors
zstyle ':completion:*' list-lolors "${LS_COLORS}"


# == History ==========================================
 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# == PATH =======

export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/Library/Flutter/sdk/flutter/bin
export PATH=$PATH:$HOME/Library/Flutter/sdk/flutter/bin/cache/dart-sdk/bin
export PATH="$HOME/.pyenv/shims:$PATH"
export PATH="/usr/local/bin/kotlin-native/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export GOPATH=$HOME/go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

