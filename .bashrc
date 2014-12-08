# .bashrc

# git alias
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gpl='git pull'
alias gf='git fetch'
alias gg='git grep -I'

# other alias
alias ls='ls -FhG'
alias be='bundle exec'
alias r='rails'

# color
export CLICOLORS=1
export LSCOLORS=Bxcxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

# show git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function precmd() {
  PROMPT="\h@\u:\W\$(parse_git_branch) \$ "
}
function proml {
  PS1="\h@\u:\W\$(parse_git_branch) \$ "
}
proml


export EDITOR=$(which vi)
