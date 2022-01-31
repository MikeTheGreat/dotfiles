
# rainbows, wheeeee!
rainbowPrompt() {
    echo ' '
    echo '%B%F{196}>%F{214}>%F{226}>%F{10}>%F{51}>%F{128}>%F{207}> '
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

PROMPT='$(printPWD)$(printRepo)$(rainbowPrompt)'
RPROMPT=''


#This was used back with plain zsh:
# format_prompts() {
#     zstyle ':vcs_info:git:*' formats '🔀 %F{240}%b%f '  # format: <gray color:> 🔀 branch
#     zstyle ':vcs_info:*' enable git
#     vcs_info
#     setopt prompt_subst
#     export PROMPT='$vcs_info_msg_0_%F{blue}>%f '
#     export RPROMPT='%d%>:%{\e[0m%}'
# }
# precmd_functions+=( format_prompts )
# 
# 
# Before each command prompt this will print
# PWD: <pwd> (In repo <repo> on branch <branch>)
# when not in a repo the (In...) part disappears
# info for messing around with colors (for echo): https://misc.flogisoft.com/bash/tip_colors_and_formatting
# prompts_for_NTs() {
#     #zstyle ':vcs_info:git:*' formats '(In repo \e[36m%r\e[0m on branch \e[1;93m%b\e[0m)'

#     # It's really important that the formats string is inside DOUBLE quotes :/
#     zstyle ':vcs_info:git:*' formats "(In repo $fg_bold[green]%r$reset_color on branch $fg_bold[yellow]%b\e[0m)"
#     zstyle ':vcs_info:*' enable git
#     vcs_info
#     #echo "\e[2mPWD:\e[0m \e[1m$PWD\e[0m $vcs_info_msg_0_" 
#     setopt prompt_subst

#     # rainbows, wheeeee!
#     #export PROMPT='%B%F{196}>%F{214}>%F{226}>%F{10}>%F{51}>%F{128}>%F{207}> '
#     #export RPROMPT=''
#     print -P "\e[2mPWD:\e[0m $fg_bold[cyan]$PWD\e[0m $vcs_info_msg_0_" 
# }
# precmd_functions+=( prompts_for_NTs )

# set_iterm2_tab_to_current() {
#     # zstyle sets up the format string for vcs_info
#     zstyle ':vcs_info:git:*' formats '%r'

#     # vcs_info then sets the $vcs_info_msg_0_
#     vcs_info

#     # Now we can use the vcs information :)
#     if [[ "${vcs_info_msg_0_}" != "" ]] # if we're in a git repo
#     then
#         echo -ne "\e]1;In Repo: ${vcs_info_msg_0_}\a" # set the iTerm2 tab title to be the repo name
#     else
#         echo -ne "\e]1;In Folder: `basename $PWD`\a" # otherwise print out the current folder's name
#     fi
# }
# precmd_functions+=( set_iterm2_tab_to_current )