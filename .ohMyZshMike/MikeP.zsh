# TODO / Stuff to look into:
#  CDPATH (on zsh, lower case cdpath is the array version) - shortcut for jumping to directories
#  fzf for searching for files / through stdin



# This is no longer needed, since the SetupMyMac.sh will add a launchd config file to do this
# across the entire mac (and on Windows we'll set the environment variable)
# launchd.conf doesn't seem to be working (either GUI or terminal)
EMACS_COMPUTER_SPECIFIC_CONFIG=~/.emacs.d/Computer_Specific_Config_Files/Mac_CCC
export EMACS_COMPUTER_SPECIFIC_CONFIG
# echo "EMACS_COMPUTER_SPECIFIC_CONFIG is set to '$EMACS_COMPUTER_SPECIFIC_CONFIG'";

# PATH=$PATH:/Users/mikepanitz/Dropbox/Work/bin
# add the current dir to the search path:
# PATH=$PATH:.
PATH=$PATH:~
export PATH

# Turn on ssh-agent:
#echo -n "Turning on ssh-agent: "
#eval "$(ssh-agent -s)"

CYGWIN=winsymlinks:nativestrict
export CYGWIN

# ~./dir_colors is the human-readable file
# describing which colors to use
eval $(dircolors ~/.dir_colors)

# Nicely formatted tab completion:
# from https://stackoverflow.com/a/16149200/250610
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'

# Turn on menu completion, and allow me to use arrow keys to move around
# https://stackoverflow.com/questions/29196718/zsh-highlight-on-tab
zstyle ':completion:*' menu select

# DISABLE colors for tab-completion:
# from https://unix.stackexchange.com/a/447002/158311
#zstyle ':completion:*' list-colors

alias ll='ls -al'
alias h=history
# Using this we can open files, such as "o Code.java".  "o" by itself starts the File Explorer
alias o='explorer.exe'
# Download all the 265 homework:
alias d265='g 265; gt c d 265 Al1 ; gt c d 265 Al1R ; gt c d 265 Al2 ; gt c d 265 Al2r'

alias do='"/cygdrive/c/Program Files/GPSoftware/Directory Opus/dopus.exe"'

git config --global core.pager off
alias gdt='git difftool'
alias gal='less /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/home/.oh-my-zsh/plugins/git/README.md'
alias gtt='gt g t '
# # git - recently changed (by a student)
# # --date is strftime format
# function grc() {

#     # How to check for an argument:
#     if [[ ! -v 1 ]]; then
#         afterTime="Jan 1 1970"
#     else
#         afterTime="$*"
#     fi

#     for d in * ; do
#         echo " "
#         echo $d "=========================================="
#         pushd $d &> /dev/null
#         git --no-pager log --date=format:"%Y-%m-%d %I:%M %p" --pretty=format:"%ad %Cred %an %Creset %s" --after="$afterTime" | grep -v -e Panitz -e bot -
#         popd &> /dev/null
#     done
# }

# List out all the executable files in my ~ directory 
# (so I can see all the zz* helper scripts)
# zsh will ignore dups on pushd by default (apparently)
# this will mess up the symmetry for popd if we pushd .
unsetopt pushdignoredups
function lx() {
    # if $1 is undefined then use ~:
    dir=${1:-~}
    #echo "Dir is: " $dir
    
    pushd $dir > /dev/null

    # Regex removes files that start with a .
    # sed removes the ./ from the file names (b/c of relative path - . )
    find . -maxdepth 1 -type f -executable -regex '\.\/[^.].*' | sed -e "s/^\.\///g"

    popd > /dev/null
}

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

# for more info: omz plugin info jump
# | Command              | Description                                                                                     |
# |----------------------|-------------------------------------------------------------------------------------------------|
# | `jump <mark-name>`   | Jump to the given mark                                                                          |
# | `mark [mark-name]`   | Create a mark with the given name or with the name of the current directory if none is provided |
# | `unmark <mark-name>` | Remove the given mark                                                                           |
# | `marks`              | List the existing marks and the directories they point to                                       |
## Key bindings
# Pressing `CTRL`+`G` substitutes the written mark name for the full path of the mark.

#  This is moved to plugins/git-patch so that it'll be loaded AFTER the git plugin
# alias g='jump $@'


# My previous way of jumping to dirs:
#alias g='wcd $@'

# # Helper function to make better use of the 'cdargs' util (for faster dir switching)
# function cv () {
#        cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" &&
#        rm -f "$HOME/.cdargsresult";
# }

# ##### VIM STUFF
# # Pressing Esc puts us in vim-editting mode:
# bindkey '\e' vi-cmd-mode 
# # Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
# export KEYTIMEOUT=1 

# # from https://stackoverflow.com/questions/14316463/zsh-clear-rps1-before-adding-line-to-linebuffer
# #vim_ins_mode="%{$fg[white]%}-INSERT-%{$reset_color%}"
# vim_ins_mode="%{$FG[243]%}-INSERT-%{$reset_color%}"
# vim_cmd_mode="%{$FG[160]%}-COMMAND-%{$reset_color%}"
# #vim_cmd_mode="%{$fg_bold[yellow]$bg[white]%}-COMMAND-%{$reset_color%}"

# vim_mode=$vim_ins_mode
# setopt transientrprompt # clear right-side prompt after we press 'enter'

# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# #zle -N zle-line-init
# #  WARNING: The following sometimes deletes the previous line CLI line :(
# #zle -N zle-keymap-select

##### HISTORY
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_FIND_NO_DUPS
unsetopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
#setopt INC_APPEND_HISTORY #mut. excl. with SHARE_HISTORY
setopt SHARE_HISTORY 


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

function gtdl() {
    gt g d $1 $2
    gt g l $1 $2
}

# --yes-playlist would be nice, but doesn't seem to work
function dl() {
    # First time will fail because it thinks something else is using it's temp files:
    youtube-dl.exe -x --audio-format mp3 --audio-quality 9 --no-playlist $1

    # second time succeeds:
    youtube-dl.exe -x --audio-format mp3 --audio-quality 9 --no-playlist $1

    # Remove temporary files:
    rm *.part-Frag0
    rm *.part-Frag1
    rm *.part-Frag2
}