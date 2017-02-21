if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# primary prompt
PROMPT='${return_code} $FG[045]%~\
$(git_prompt_info) \
$FG[105]%(!.#.»)%{$reset_color%} '

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
