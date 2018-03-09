export PATH="$HOME/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(jenv init -)"

# Git Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  . ~/.git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=true
  PS1="[\[\033[32m\]\w\[\033[0m\]]\[\033[33m\]\$(__git_ps1)\n\[\033[31m\]Jobs:\j \[\033[35m\]\t\n\[\033[1;36m\]\u@\h\[\033[0;32m\] \!\[\\033[1;34m\]\$ \[\\033[0m\]"
else
  PS1="[\[\033[32m\]\w\[\033[0m\]]\n\[\033[31m\]Jobs:\j \[\033[35m\]\t\n\[\033[1;36m\]\u@\h\[\033[0;32m\] \!\[\\033[1;34m\]\$ \[\\033[0m\]"
fi

export EDITOR='subl -w'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
