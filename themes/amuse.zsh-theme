# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}


PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}%{$reset_color%}$(git_prompt_info)%{$reset_color%}
$(virtualenv_prompt_info) %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%} '

RPROMPT='⌚ %{$fg_bold[red]%}%*%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[yellow]%} ?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"

#RPROMPT='%{$fg_bold[red]%}$(rvm_current)%{$reset_color%}'
