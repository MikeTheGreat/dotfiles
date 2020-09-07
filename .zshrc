######### Mike specific stuff

EMACS_COMPUTER_SPECIFIC_CONFIG=~/.emacs.d/Computer_Specific_Config_Files/Mac_CCC
export EMACS_COMPUTER_SPECIFIC_CONFIG

# echo "EMACS_COMPUTER_SPECIFIC_CONFIG is set to '$EMACS_COMPUTER_SPECIFIC_CONFIG'";

PATH=$PATH:/Users/mikepanitz/Dropbox/Work/bin
# add the current dir to the search path:
PATH=$PATH:.
export PATH

# Helper function to make better use of the 'cdargs' util (for faster dir switching)
function cv () {
       cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" &&
       rm -f "$HOME/.cdargsresult";
}

# Turn on ssh-agent:
echo -n "Turning on ssh-agent: "
eval "$(ssh-agent -s)"

CYGWIN=winsymlinks:nativestrict
export CYGWIN

# set_iterm2_tab_to_current() {
#     # zstyle sets up the format string for vcs_info
#     zstyle ':vcs_info:git:*' formats '%r'

#     # vcs_info then sets the $vcs_info_msg_0_
#     vcs_info

#     # Now we can use the vcs information :)
#     if [[ "${vcs_info_msg_0_}" != "" ]] # if we're in a git repo
#     then
#         echo -ne "\e]1;${vcs_info_msg_0_}\a" # set the iTerm2 tab title to be the repo name
#     else
#         echo -ne "\e]1;In `basename $PWD`\a" # otherwise print out the current folder's name
#     fi
# }
# precmd_functions+=( set_iterm2_tab_to_current )

# # Scripts to bulk-commit repos:
# CSTR_MSG="No message"
# commit_student_team_repos() {
#     echo "$CSTR_MSG"
#     pushd "/Users/mikepanitz/Desktop/Repos/"
#     for team in Team31-AppPrototype Team32-AppPrototype Team33-AppPrototype Team34-AppPrototype Team35-AppPrototype
#     do
#         echo "$team ==================================================================================================="
#         add_commit_push "$team" "$CSTR_MSG"
#     done
#     popd
# }
# alias cstr='commit_student_team_repos'

# add_commit_push()  {
#     pushd $1
#     echo "Pushed to $1"
#     git add .
#     git commit -m "$2"
#     git push
#     echo "Done - popping"
#     popd    
# }

# format_prompts() {
#     zstyle ':vcs_info:git:*' formats '🔀 %F{240}%b%f '  # format: <gray color:> 🔀 branch
#     zstyle ':vcs_info:*' enable git
#     vcs_info
#     setopt prompt_subst
#     export PROMPT='$vcs_info_msg_0_%F{blue}>%f '
#     export RPROMPT='%d%>:%{\e[0m%}'
# }
# precmd_functions+=( format_prompts )

######### End Mike specific stuff



alias ll='ls -al'


autoload -U colors && colors
# For ANSI/VT100 colors and formatting:
# https://misc.flogisoft.com/bash/tip_colors_and_formatting

# If echo $TERM says 'xterm-256color' then you can use the following colors:
# https://jonasjacek.github.io/colors/


autoload -Uz vcs_info

# Before each command prompt this will print
# PWD: <pwd> (In repo <repo> on branch <branch>)
# when not in a repo the (In...) part disappears
# info for messing around with colors (for echo): https://misc.flogisoft.com/bash/tip_colors_and_formatting
prompts_for_NTs() {
    #zstyle ':vcs_info:git:*' formats '(In repo \e[36m%r\e[0m on branch \e[1;93m%b\e[0m)'

    # It's really important that the formats string is inside DOUBLE quotes :/
    zstyle ':vcs_info:git:*' formats "(In repo $fg_bold[green]%r$reset_color on branch $fg_bold[yellow]%b\e[0m)"
    zstyle ':vcs_info:*' enable git
    vcs_info
    #echo "\e[2mPWD:\e[0m \e[1m$PWD\e[0m $vcs_info_msg_0_" 
    print -P "\e[2mPWD:\e[0m $fg_bold[cyan]$PWD\e[0m $vcs_info_msg_0_" 
    setopt prompt_subst

    # rainbows, wheeeee!
    export PROMPT='%B%F{196}>%F{214}>%F{226}>%F{10}>%F{51}>%F{128}>%F{207}> '
    export RPROMPT=''
}
precmd_functions+=( prompts_for_NTs )

{
preexec()
  echo -ne "\e[0m" # Resetting color to default white.
}

# Turn on tab completion for git & zsh:
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
autoload -Uz compinit && compinit
