#!/usr/bin/env bash
# AddPdfFeedback

function WordToPdf() {
    FILENAME=${1%.*}
    PDF_FILE="${FILENAME}.pdf"

    echo "===================================="
    #echo $1
    #echo $PDF_FILE
    #echo `pwd`

    echo "CONVERTING $1 => $PDF_FILE"
    #/cygdrive/c/Users/michp/AppData/Roaming/Python/Python38/Scripts/docx2pdf.exe "$1"
    # Turns out, pandoc & Word take about the same amount of time
    # and Word converts DOCX files waaaaay better (much higher fidelity)
    #pandoc -s "$1" -o "$PDF_FILE" --pdf-engine=xelatex
    /cygdrive/c/MikesStuff/Pers/Dropbox/Work/bin/OfficeToPDF.exe "$1" "$PDF_FILE"
}
export -f WordToPdf

function main() {
    ONLY_EXTRACT_THESE=".*"

    if [[ -z "$1" ]]
        then
        echo "Required first param: Path to folder containing subfolders to search for Word files"
        return 2>/dev/null 
        exit
    fi
    # convert to cygwin, (idempotent if it's already in cygpath format)
    SRC="$1"
    
    if [ ! -d "$SRC" ]
    then
        # echo the name of the script, without the leading path:
        echo "${0//*\//}: $SRC does not exist."
        exit -1
    fi

    #find . -iname ".gitignore" -exec sh -c "echo $'\n'\*_TEMPLATE_COPIED.txt >> {}" \;
    pushd $SRC > /dev/null 2>&1
    echo "Searching for Word files to export to .PDF in: " `pwd` 

    # Find matching .DOCX files & make converted copies of them:
    # put -print before execdir to see which dir we're in

    # Calling a shell function from -exec is a little tricky:
    # https://stackoverflow.com/a/4321522/250610
    #find . -iregex "In Class Exercises\.*docx$" -print  -execdir bash -c 'WordToPdf "$0"' {}  \;  
    #find . -iname "A1_SpaceNeedle*.docx"  -execdir bash -c 'WordToPdf "$0"' {}  \;  
#    find . -regex "\(.*In Class Exercises - Lecture .*docx$\|.*A1_SpaceNeedle.*docx\|.*A2_BirthdayInfo.*docx\|.*A3_Adding_Large_Integers.*docx\|.*A4_Grocery_List.*docx\)" -execdir bash -c 'WordToPdf "$0"' {}  \;
    find . -regex "\(.*In Class Exercises - Lecture .*docx$\|.*A[1234567890].*docx\)" -execdir bash -c 'WordToPdf "$0"' {}  \;

    popd > /dev/null 2>&1
}

# Remove the last item in my path (which is my .)
# From https://askubuntu.com/a/1125667
PATH=${PATH%:*}

main "$@"