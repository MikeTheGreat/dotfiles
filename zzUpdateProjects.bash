#!/usr/bin/env bash

# Example of usage:
# <script name> <folder containing stuff to update> <folder to put new, updated projects into>

# BIT 142:
# UpdateProjects.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_Projects /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_142_Starter_Projects_New2
#
# BIT 143:
# UpdateProjects.bash /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_Projects /cygdrive/c/MikesStuff/Pers/Dropbox/Work/Courses/BIT_143_Starter_Projects_New

# NOTE: <folder containing stuff to update> is expecting projects inside folders in the form of
# ProjectName(_VS.*)+
# where the _VS.* is optional and is a naming convention to describe the version of VS, etc
# that the project works with

function main() {
    # use ".*" to match everything
    #ONLY_UPDATE_THESE="PCE_09.*"
    ONLY_UPDATE_THESE="PCE_03_Git.*"

    # Set this to 0 to stop
    # anything else to remove the temp dir
    REMOVE_TEMP_DIR=0

    # echo "$0"
    # echo "$1"
    # echo "$2"
    # echo =======

    if [[ -z "$1" ]]
    then
        echo Required first param: Path to folder containing projects to update
        return 2>/dev/null
        exit
    fi
    # convert to cygwin, (idempotent if it's already in cygpath format)
    PROJECTS_ROOT_DIR="$1"
    # convert to absolute path (if it's not already):
    PROJECTS_ROOT_DIR=`realpath "$PROJECTS_ROOT_DIR"`

    if [[ ! -d "$PROJECTS_ROOT_DIR" ]]
    then
        echo "$PROJECTS_ROOT_DIR does NOT exist"
        return 2>/dev/null
        exit
    fi

    if [[ -z "$2" ]]
    then
        echo Required second param: Path to folder where output should go
        return 2>/dev/null
        exit
    fi
    # convert to cygwin, (idempotent if it's already in cygpath format)
    OUTPUT_DIR="$2"
    # convert to absolute path (if it's not already):
    OUTPUT_DIR=`realpath "$OUTPUT_DIR"`


    mkdir -p "$OUTPUT_DIR"

    if [[ ! -d "$OUTPUT_DIR" ]]
    then
        echo "$OUTPUT_DIR does NOT exist, and could not be created"
        return 2>/dev/null
        exit
    fi

    echo ""
    printf "Translating projects in \n\t$PROJECTS_ROOT_DIR\n"
    printf "Storing newly created projects into \n\t$OUTPUT_DIR\n"
    printf "Only matching folders that contain\n\t$ONLY_UPDATE_THESE\n\n"

    declare -a PROJECTS_WITH_ERRORS

    for PROJECT in "$PROJECTS_ROOT_DIR"/*/     # list directories in the form of a FQN, with trailing slash
    do
        # echo POSSIBLE NEXT PROJECT: "$PROJECT"
        if [[ ! "$PROJECT" =~ ${ONLY_UPDATE_THESE} ]]
        then
            # printf "\tno match\n"
            continue
        fi


        pushd ${PROJECT} &> /dev/null
        echo === `pwd` ================================

        PROJECT=${PROJECT%*/} # remove the trailing "/"

        PROJ_NAME=${PROJECT##*/}    # print everything after the final "/"
        PROJ_NAME=${PROJ_NAME%%_VS*}
        # echo PROJ_NAME: "$PROJ_NAME"

        # There's enough params that I'm passing them
        # via vars instead of in order
        SRCPROJ=${PROJECT}
        SLNNAME="$PROJ_NAME"
        FRAMEWORKTARGET=net5.0
        STARTUP_OBJECT="PCE_StarterProject.Program"

        SUBDIR="$OUTPUT_DIR"/"$PROJ_NAME"_VS_2019_Net_5-0_NUnit_3
        mkdir -p $SUBDIR

        OPTIONAL_BASH_FILE="$SRCPROJ"/BUILD_VARS.bash
        if [[ -f "$OPTIONAL_BASH_FILE" ]]
        then
            printf "Processing optional, per-project bash file\n"
            pushd "$SRCPROJ" >/dev/null 2>&1
            source "BUILD_VARS.bash"
            popd >/dev/null 2>&1
            cp "$OPTIONAL_BASH_FILE" "$SUBDIR"/
        fi

        MakeNewSolution
        # MakeNewSolution ${PROJECT} "$OUTPUT_DIR"/"$PROJ_NAME"_VS_2019_Net_5-0_NUnit_3 "$PROJ_NAME" net5.0
        echo
        popd &> /dev/null
    done

    if [ ${#PROJECTS_WITH_ERRORS[@]} -eq 0 ]
    then
        printf "All projects built successfully!\n\n"
    else
        echo "${#PROJECTS_WITH_ERRORS[@]} starter project(s) did NOT build successfully"
        for BADPROJ in ${PROJECTS_WITH_ERRORS[@]}; do
            printf "\t${BADPROJ}\n"
        done
        echo ""
    fi
}

function MakeNewSolution() {
    # echo --- Make New Solution --------------
    # echo "$0"
    # echo "$1"
    # echo SRCPROJ: $SRCPROJ
    # echo "$2"
    # echo "$3"
    # echo "$4"
    # echo =======


    if [[ -z "$SRCPROJ" ]]
    then
        echo Required var SRCPROJ: Path to source project to copy into new, updated project
        return 2>/dev/null
        exit
    fi

    #  Sample SRCPROJ:
    #  C:\MikesStuff\Pers\Dropbox\Work\Courses\NUnit_Autograders\AG_PristineProjects\BIT_143\PCE_03_VS_2017_NUnit_3_0

    if [[ -z "$SUBDIR" ]]
    then
        echo Required var SUBDIR: Name of new subdir to put new project into
        return 2>/dev/null
        exit
    fi


    if [[ -z "$SLNNAME" ]]
    then
        echo Required var SLNNAME: Name of new project
        return 2>/dev/null
        exit
    fi

    PROJNAME=${SLNNAME}_Project

    if [[ -z "$FRAMEWORKTARGET" ]]
    then
        echo Required var FRAMEWORKTARGET: version of .net to target, as listed in the output from dotnet new nunit -h
        echo Here\'s the list:
        dotnet new nunit -h
        return 2>/dev/null
        exit
    fi

    if [[ -z "$STARTUP_OBJECT" ]]
    then
        echo Required var STARTUP_OBJECT: For VS - something like PCE_StarterProject.Program
        return 2>/dev/null
        exit
    fi

    # echo SUBDIR is $SUBDIR
    # printf "SLNNAME is ${SLNNAME}\t\tPROJNAME is ${PROJNAME}"
    # echo Targetting $FRAMEWORKTARGET
    # echo ""
    # echo STARTUP_OBJECT: $STARTUP_OBJECT

    printf "\tBuilding project \'${SLNNAME}\' (target: $FRAMEWORKTARGET )\n\tin $SUBDIR\n"
    printf "\tWill copy *.cs from this dir: $SRCPROJ\n"

    # echo ADD_DLL_NAME: "$ADD_DLL_NAME"
    # echo ADD_DLL_PATH: $ADD_DLL_PATH
    # if [[ -v ADD_DLL_NAME && -v ADD_DLL_PATH ]]
    # then
    #     echo "FOUND"
    # else
    #     echo "NOT FOUND"
    # fi
    # echo ""
    echo ""

    ZIPNAME=${SUBDIR##*/}.zip

    mkdir -p $SUBDIR
    pushd $SUBDIR >/dev/null 2>&1

    # Create the solution
    dotnet new sln -n $SLNNAME

    # Create the project
    dotnet new nunit -f $FRAMEWORKTARGET -n $PROJNAME -o .
    # Get rid of the auto-generated *.cs files:
    rm *.cs

    # Tack the file extension on:
    PROJNAME=${PROJNAME}.csproj

    #  copy the .CS files into the new project's dir
    cp -r "${SRCPROJ}"/*.cs .

    #  Need to add "<StartupObject>PCE_StarterProject.Program</StartupObject>" to <PropertyGroup>
    if [ -n "$(xmlstarlet sel -T -t -v "/PropertyGroup/StartupObject" ${PROJNAME})" ]; then
        echo "StartupObject already defined in ${PROJNAME}"
    else
        echo "Adding StartupObject to <PropertyGroup> in ${PROJNAME}"
        xmlstarlet ed -L -s /Project/PropertyGroup -t elem -n StartupObject -v "$STARTUP_OBJECT"  ${PROJNAME}
    fi

    if [[ -v ADD_DLL_NAME && -v ADD_DLL_PATH ]]
    then
        printf "Adding DLL dependency: $ADD_DLL_NAME\n\tAt $ADD_DLL_PATH\n"
        xmlstarlet ed -L \
                   -s /Project -t elem -n ItemGroupTMP -v "" \
                   -s //ItemGroupTMP -t elem -n ReferenceTMP -v ""  \
                   -i //ReferenceTMP -t attr -n "Include" -v "$ADD_DLL_NAME" \
                   -s //ReferenceTMP -t elem -n HintPath -v "$ADD_DLL_PATH" \
                   -r //ReferenceTMP -v Reference \
                   -r //ItemGroupTMP -v ItemGroup \
                   ${PROJNAME}
    fi

    OPTIONAL_PROJECT_CUSTOMIZER="$SRCPROJ"/PROJECT_CUSTOMIZER.bash
    if [[ -f "$OPTIONAL_PROJECT_CUSTOMIZER" ]]
    then
        printf "Processing optional, per-project customizer ---------------------\n"
        source "$OPTIONAL_PROJECT_CUSTOMIZER"
        cp "$OPTIONAL_PROJECT_CUSTOMIZER" "$SUBDIR"/
    fi

    # Now that the project is set up ok, add it to the solution:
    dotnet sln add ${PROJNAME}

    #  In case I wanted to add NuGet packages manually:
    #  dotnet add Test/Test.csproj package nunit
    #  dotnet add Test/Test.csproj package nunit3testadapter
    #  dotnet add Test/Test.csproj package nunit.consolerunner

    # Verify that the project compiles ok:
    dotnet build ${SLNNAME}.sln
    #  Does this switch force a clean / full rebuild?
    #  --no-incremental

    # save the exit code so we don't accidentally clobber it
    EXIT_CODE=$?

    if [ $EXIT_CODE -ne 0 ]
    then
        echo Adding ${SLNNAME} to the list of projects that did not compile successfully
        PROJECTS_WITH_ERRORS+=(${SLNNAME})
        # echo PROJECTS_WITH_ERRORS: ${PROJECTS_WITH_ERRORS[@]}
    fi

    sleep 2s
    # Remove extra junk in prep for .zipping:
    dotnet clean ${SLNNAME}.sln

    sleep 2s
    rm -rf ./bin
    rm -rf ./obj

    # Package the new project & move it up to the destination di
    echo ZIPNAME: ${ZIPNAME}
    zip -r ${ZIPNAME} .

    # Get rid of the .git folder for the student copy?
    # zip -d "${ZIPNAME}" "*\.git/*"
    # Removed this b/c I'd like to use the .ZIP files as the 'real' copy

    # Sometimes the rm's above don't actually remove the bin or obj dirs
    # So try again here
    # (it's not the end of the world if we include them, but they're just extra space)
    zip -d "${ZIPNAME}" "_vti_cnf/*" "bin/*" "obj/*" ".vs/*" ".idea/*" "__MACOSX*" "*.DS_Store" "*.class"

    mv ${ZIPNAME} ..

    popd >/dev/null 2>&1

    if [ $REMOVE_TEMP_DIR -ne 0 ]
    then
        echo Removing the temp dir ${SUBDIR}
        sleep 2s
        rm -rf $SUBDIR
        # echo REMOVED!
    fi
}

main "$@"
