autoload -U colors && colors
autoload -Uz vcs_info

precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg[cyan]%}%~%{$reset_color%} %{$fg[magenta]%}${vcs_info_msg_0_} %{$reset_color%}> '

# Git aliases
alias gs="git status"
alias gaa="git add -A"
gcm() {
    git commit -m $1
}
ga() {
    git add $1
}

# aliases for editing and sourcing this file
alias scz="source ~/.zshrc"
alias ezsh="vim ~/.zshrc"

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
