export PATH="/usr/local/Cellar/git/2.5.0/bin:$PATH"

# Golangのパス設定
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

# git設定
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='%n@%m %c'\$vcs_info_msg_0_' %# '
precmd(){ vcs_info }

# nvim
alias ls='ls -p -G'
alias la='ls -A'
alias ll='ls -l'
alias lla='ll -A'
alias g='git'
alias vi='nvim'
alias vim='nvim'
alias ide="~/.ide.sh"

# rbenv
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# if [ $SHLVL = 1 ]; then
#   tmux
# fi
#
