
autoload -Uz vcs_info


# rainbows, wheeeee!
rainbowPrompt() {
    echo ' '
    echo '%B%F{196}>%F{214}>%F{226}>%F{10}>%F{51}>%F{128}>%F{207}>'
}

printPWD() {
    printf "\e[2mPWD:\e[0m $fg_bold[cyan]$PWD\e[0m"
}

printRepo() {
    # Only print if we're actually in a repo:
    output="$(git_repo_name)"

    if [[ -n $output ]]
    then
        printf " (In repo $fg_bold[green]%s$reset_color" "$output"
        git_prompt_info
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on branch $fg_bold[yellow]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}! "
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[green]%}? "
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='$(printPWD)$(printRepo)$(rainbowPrompt)%{$reset_color%} '
RPROMPT=''