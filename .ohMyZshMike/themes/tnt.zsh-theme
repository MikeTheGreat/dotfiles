
autoload -Uz vcs_info


# rainbows, wheeeee!
rainbowPrompt() {
    echo ' '
    echo '%B%F{196}>%F{214}>%F{226}>%F{10}>%F{51}>%F{128}>%F{207}>'
}

printPWD() {
    # FG is in OMZ, accepts spectrum_ls codes
    echo "$FG[243]PWD: $fg_bold[cyan]$PWD$reset_color"
}

printRepo() {
    # Only print if we're actually in a repo:
    output="$(git_repo_name)"

    if [[ -n $output ]]
    then
        printf " (In repo $fg[green]%s$reset_color" "$output"
        git_prompt_info
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on branch $FG[226]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}! "
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[green]%}? "
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='$(printPWD)$(printRepo)$(rainbowPrompt)%{$reset_color%} '
RPROMPT=''

# set color for the text that we type in:
zle_highlight=(default:bold,fg=#F5F)