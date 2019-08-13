#! /bin/bash
# /cygdrive/c/cygwin/bin/bash

#source /c/cygwin64/bin/cdargs/cdargs-lib.sh
#source /c/cygwin64/bin/cdargs/cdargs-alias.sh
#source /c/cygwin64/bin/cdargs/cdargs-bash-completion.sh

# This will put things like CygWin's ls, find, in front 
# of the C:\Windows\System32 programs (???) with the same name
PATH=/usr/bin:$PATH
PATH=$PATH:.
PATH=$PATH:/c/cygwin64/bin
PATH=$PATH:/cygdrive/c/MikesStuff/Work/bin
bind '"\t":menu-complete'

export PATH

#alias gomo="cd /cgydrive/e/Pers/xampp-win32-1.7.4-VC6/htdocs/moodle_2_1_1"

# for git-bash:
#alias g116="cd /e/Work/Website/Courses/BIT116"
#alias gTemp="cd /e/work/Student_Work/TEMP"

# Never used this :/
# alias otl2html="/cygdrive/e/Pers/bin/vim/Packages/vimoutliner-107/otl2html"

function gvim() { /c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe "$@" ;}


# Adjust bash color scheme:
# alias ll="ls -alF"
alias ll="ls -alF --color=auto"
alias gQ="cd /c/MikesStuff/Pers/Dropbox/Personal/Tech/DIY\ Keyboard/Firmware/qmk_firmware"
#alias ll="ls -alF"
eval "`/usr/bin/dircolors -b ~/DIR_COLORS_DB`"

function cv () {
       cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" &&
       rm -f "$HOME/.cdargsresult";
}

#HISTCONTROL=ignoredups
HISTCONTROL=erasedups:ignoredups
source ~/qmk_utils/activate_msys2.sh

[[ -s /c/MikesStuff/Pers/Dropbox/Personal/home/.autojump/etc/profile.d/autojump.sh ]] && source /c/MikesStuff/Pers/Dropbox/Personal/home/.autojump/etc/profile.d/autojump.sh
