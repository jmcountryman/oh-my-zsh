# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}


PROMPT='
%{$(iterm2_prompt_mark)%}%{$fg_bold[yellow]%}${PWD/#$HOME/~}%{$reset_color%} %(?:%{$fg[green]%}➜:%{$fg[red]%}➜%s)%{$reset_color%}  '
# PROMPT='
# %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}%{$reset_color%}$(git_prompt_info)%{$reset_color%} $(virtualenv_prompt_info)
# %(?:%{$fg[green]%}%{$(iterm2_prompt_mark)%} :%{$fg[red]%}%{$(iterm2_prompt_mark)%} %s)%{$reset_color%}'
# ➜
# λ


RPROMPT='$(virtualenv_prompt_info) $(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[yellow]%} ?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"

#RPROMPT='%{$fg_bold[red]%}$(rvm_current)%{$reset_color%}'
