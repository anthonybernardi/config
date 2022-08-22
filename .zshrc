autoload -U colors && colors
autoload -Uz vcs_info

precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg[cyan]%}%~%{$reset_color%} %{$fg[magenta]%}${vcs_info_msg_0_} %{$reset_color%}> '

export PORTAL_API_JWT=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJ2VFhlM3dRZHlQZTV1SlI3cCIsImp0aSI6Im9zUXA1dUJqQzcyc3pvOEZlIiwiaWF0IjoxNjU5NTU1MjI2LCJuYmYiOjE2NTk1NTUyMjYsImV4cCI6MTExMjY1NzYwMjYsImdyb3VwSWQiOiJlMjdoU0xzUGtNV25qUENzciJ9.lVRPJ14QNM8XYnv_TNqgXe_51LPmc70_BtHL0zqLW6W-21c0gmjTP74yKjklhiz53uZL8yzYQSg8W7N6464p-Cx-IQq9qWHye2die-eE3QHtFPllqgoon2_EHc5XpMdHopGBcafO6sAo2l6QufunGnxnp3aO9ds-DUAKSVNRDlz__k-8jSebQWzxqG9IUAwb-BoKD5lsPBrXIgwtVyELjtQop6O6-kIS6qltSqspzX9FD3LhgDXnpb2c0dNydOgvTAzFwQ3v1xPMmonWeBLNVA9_C_UdN0gFI2BFmNRwC0UPCoJ3GtR0dcXaNrsecTecsS58J_p3t6Q7rmqHpRRb5A


alias port="cd ~/Desktop/portalapi"
alias app="cd ~/Desktop/appserver"
alias web="cd ~/Desktop/webui"

alias dlm="app && Meteor npm install && source ~/Documents/boston-test-system/METEOR_ENV.sh && NODE_TLS_REJECT_UNAUTHORIZED=0 meteor --settings ~/Documents/boston-test-system/settings.json --port 3000"

alias unit="rm -rf node_modules package-lock.json; nvm use 12; npm install;"
alias int="app; export HEADED_MODE=1;"

alias gs="git status"
alias gaa="git add -A"
gcm() {
    git commit -m $1
}

alias py2="export npm_config_python=/Users/anthony.bernardi/.pyenv/shims/python2;"

alias ssh-dsa="ssh root@DSABOSTON01"
alias ssh-dc="ssh root@DCBOSTON01"
alias sftp-dc="sftp root@DCBOSTON01"

alias scz="source ~/.zshrc"
alias ezsh="vim ~/.zshrc"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm






