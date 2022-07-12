
echo "Starting backup at " $(date +"%Y-%m-%d %H-%M-%S")
echo " "

RSYNC_CMD="rsync -a  --chmod=ugo=rwX --delete-before  --force --stats --ignore-errors --perms --exclude-from /cygdrive/c/MikesStuff/Pers/Dropbox/Work/bin/RBackup_Exclude.txt"
#RSYNC_CMD="echo"

DirsToBackup=('/cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/;/cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/Windows_Terminal' 
              #'/cygdrive/c/Users/michp/AppData/Roaming/Code/User/settings.json;/cygdrive/c/MikesStuff/Pers/Dropbox/Personal/home/VisualStudioCode'  
              '/cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/RoamingState/Small;/cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/VisualStudioCode_SmallIcons'
              )


for dir in "${DirsToBackup[@]}" ; do
    echo ">>>${dir}<<<"
    saveIFS="$IFS"
    IFS=';'
    a=(${dir})
    IFS="$saveIFS"

    # for part in "${a[@]}" ; do
    #     echo "    PART:" $part
    # done

    orig=${a[0]}
    backup=${a[1]}

    echo "    ORIG: " $orig
    echo "    BACK: " $backup
    if [[ -f "$orig" ]]; then
        echo "orig exists."
        if [[ -f "$backup" ]]; then
            echo "backup exists."
        fi
    fi

    if [[ -d "$orig" && -d "$backup" ]]; then
        echo "orig and backup dirs both exist"
        $RSYNC_CMD "$backup" "$orig"
    fi
done

exit


#echo "Backing up Grading template ================================================================================"
#cp -v -R /cygdrive/c/Users/michp/AppData/Roaming/Microsoft/Templates/Grading.dotx /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/GradingTemplates/

echo "Backing up Windows Terminal's settings ======================================================================"
#$RSYNC_CMD /cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/ /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/Windows_Terminal


echo "Backing up VS Code's settings  ============================================================================="
#cp -v /cygdrive/c/Users/mike/AppData/Roaming/Code/User/settings.json /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/home/VisualStudioCode

#$RSYNC_CMD /cygdrive/c/Users/michp/AppData/Roaming/Code/User/ /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/VisualStudioCode


echo "Backing up VS Code's icons & background images ============================================================"
#$RSYNC_CMD /cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/RoamingState/Small /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/VisualStudioCode_SmallIcons


echo "Backing up Minecraft  ====================================================================================="
#$RSYNC_CMD /cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.MinecraftUWP_8wekyb3d8bbwe/LocalState/games/ /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/Minecraft/Bedrock\ Edition
#$RSYNC_CMD /cygdrive/c/Users/michp/AppData/Local/Packages/Microsoft.MinecraftEducationEdition_8wekyb3d8bbwe/ /cygdrive/c/MikesStuff/Pers/Dropbox/Personal/Backups/Minecraft/EducationEdition

if [ -d "/cygdrive/g/" ]; then
echo " "
echo " "
echo "      ====   C drive to G drive   ===="
echo " "
echo " "
T="$(date +%s)"
echo " "
#$RSYNC_CMD /cygdrive/c/MikesStuff/ /cygdrive/g/
echo " "
T="$(($(date +%s)-T))"
printf "Elapsed Time: %02d:%02d:%02d:%02d\n" "$((T/86400))" "$((T/3600%24))" "$((T/60%60))" "$((T%60))"
fi

# e is either missing or a USB drive# if [ -d "/cygdrive/e/" ]; then
# echo " "
# echo " "
# echo "      ====   C drive to E drive   ===="
# echo " "
# echo " "
# T="$(date +%s)"
# echo " "
# $RSYNC_CMD /cygdrive/c/MikesStuff/ /cygdrive/e/
# echo " "
# T="$(($(date +%s)-T))"
# printf "Elapsed Time: %02d:%02d:%02d:%02d\n" "$((T/86400))" "$((T/3600%24))" "$((T/60%60))" "$((T%60))"
# fi

echo " "
echo "Ending backup at " $(date +"%Y-%m-%d %H-%M-%S")

if [ -d "/cygdrive/t/" ]; then
echo " "
echo " "
echo "      ====   C drive to T drive   ===="
echo " "
echo " "
T="$(date +%s)"
echo " "
#$RSYNC_CMD  /cygdrive/c/MikesStuff/ /cygdrive/t/MikesStuff
echo " "
T="$(($(date +%s)-T))"
printf "Elapsed Time: %02d:%02d:%02d:%02d\n" "$((T/86400))" "$((T/3600%24))" "$((T/60%60))" "$((T%60))"
fi

# put these messages here in case one drive exists but not hte other
# That way we'll see these error messages at the end, when the script is done
if [ ! -d "/cygdrive/g/" ]; then
echo "G: drive does not exist - NOT doing primary backup!"
fi

if [ ! -d "/cygdrive/e/" ]; then
echo "H: drive does not exist - NOT doing secondary backup!"
fi

if [ ! -d "/cygdrive/t/" ]; then
echo "T: drive does not exist - NOT doing PapaTed backup!"
fi


