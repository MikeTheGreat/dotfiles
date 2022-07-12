#!/usr/bin/env bash

# Example of usage:
# <script name> <folder containing stuff to update> <folder to put new, updated ZIPFILEs into>

# BIT 142:
# UpdateZIPFILEs.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_ZIPFILEs /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_ZIPFILEs_New
#
# BIT 143:
# UpdateZIPFILEs.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_ZIPFILEs /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_ZIPFILEs_New

LINE_TO_ADD="GitCommitsAndGitHubPushes.txt"

function main() {
    ONLY_EXTRACT_THESE=".*"

    if [[ -z "$1" ]]
        then
        echo Required first param: Path to folder containing subfolders to search for .gitignore files
        return 2>/dev/null 
        exit
    fi
    # convert to cygwin, (idempotent if it's already in cygpath format)
    SRC="$1"
    
    #find . -iname ".gitignore" -exec sh -c "echo $'\n'\*_TEMPLATE_COPIED.txt >> {}" \;
    pushd $SRC > /dev/null 2>&1
    echo "Searching for .gitignore files in: " `pwd` 
    echo "    Adding ${LINE_TO_ADD} to the following files:"
    find . -iname ".gitignore" ! -exec grep -q "${LINE_TO_ADD}" {} \;  -print  -exec sh -c "echo $'\n'${LINE_TO_ADD} >> \"{}\"" \;
    popd > /dev/null 2>&1
}

main "$@"