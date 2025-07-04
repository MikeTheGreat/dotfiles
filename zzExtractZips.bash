#!/usr/bin/env bash

# Example of usage:
# <script name> <folder containing stuff to update> <folder to put new, updated ZIPFILEs into>

# BIT 142:
# UpdateZIPFILEs.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_ZIPFILEs /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_ZIPFILEs_New
#
# BIT 143:
# UpdateZIPFILEs.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_ZIPFILEs /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_ZIPFILEs_New

function main() {
    ONLY_EXTRACT_THESE=".*"

    echo "WARNING: This only extracts .zip files in the target directory; it does NOT recursively search subdirs!"

    if [[ -z "$1" ]]
        then
        echo Required first param: Path to folder containing ZIPFILEs to unzip
        return 2>/dev/null 
        exit
    fi
    # convert to cygwin, (idempotent if it's already in cygpath format)
    SRC="$1"

    if [[ -z "$2" ]]
    then
        echo Required second param: Path to folder to put extracted .zips into
        return 2>/dev/null 
        exit
    fi

    OUTPUT_DIR="$2"

    mkdir -p "$OUTPUT_DIR"

    if [[ ! -d "$OUTPUT_DIR" ]]
    then
        echo "$OUTPUT_DIR does NOT exist, and could not be created"
        return 2>/dev/null 
        exit
    fi

    echo ""
    printf "Extracting .ZIP files in \n\t$SRC\n"
    printf "Outputting to \n\t$OUTPUT_DIR\n\n"

    for ZIPFILE in "$SRC"/*
    do
        # echo ZIPFILE: "$ZIPFILE"
        if [[ ! "$ZIPFILE" =~ ${ONLY_EXTRACT_THESE} ]]
        then 
            continue
        fi

        echo === ${ZIPFILE}  ================================

        NEW_DIR_NAME=${ZIPFILE%*\.zip}      # remove the trailing "/"
        NEW_DIR_NAME=${NEW_DIR_NAME##*/}    # print everything after the final "/"

        unzip -o ${ZIPFILE} -d ${OUTPUT_DIR}/${NEW_DIR_NAME}

        echo
    done

}

main "$@"