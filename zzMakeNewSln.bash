# #!/usr/bin/env bash

# #  Example of use:
# #  c:\MikesStuff\Work\Student_Work\BIT_143_New>MakeNewSln.bash "C:\MikesStuff\Pers\Dropbox\Work\Courses\NUnit_Autograders\AG_PristineProjects\BIT_143\PCE_03_VS_2017_NUnit_3_0" PCE_03_VS_2019_NUnit_3 PCE_03 net5.0

# # echo "$0"
# # echo "$1"
# # echo "$2"
# # echo "$3"
# # echo "$4"
# # echo =======

# if [ -z "$1" ] 
#     then
#     echo Required first param: Path to source project to copy into new, updated project
#     return 2>/dev/null 
#     exit
# fi
# SRCPROJ="$1"

# #  Sample SRCPROJ: 
# #  C:\MikesStuff\Pers\Dropbox\Work\Courses\NUnit_Autograders\AG_PristineProjects\BIT_143\PCE_03_VS_2017_NUnit_3_0

# if [ -z "$2" ]
#         then
#     echo Required second param: Name of new subdir to put new project into
#     return 2>/dev/null 
#     exit
# fi

# SUBDIR="$2"

# if [ -z "$3" ]
# then
#     echo Required third param: Name of new project
#     return 2>/dev/null 
#     exit
# fi

# SLNNAME="$3"
# PROJNAME=${SLNNAME}_Project

# if [ -z "$4" ]
# then
#     echo Required fourth param: version of .net to target, as listed in the output from dotnet new nunit -h
#     echo Here\'s the list:
#     dotnet new nunit -h
#     return 2>/dev/null 
#     exit
# fi

# FRAMEWORKTARGET="$4"

# #echo SUBDIR is $SUBDIR
# #echo PROJNAME is ${PROJNAME}
# #echo Targetting $FRAMEWORKTARGET
# #echo Willl copy *.cs from this dir: $SRCPROJ

# printf "\tBuilding project \'${SLNNAME}\' (target: $FRAMEWORKTARGET )\n\tin $SUBDIR"

# ZIPNAME=${SUBDIR##*/}.zip

# mkdir $SUBDIR
# pushd $SUBDIR

# # Create the solution
# dotnet new sln -n $SLNNAME

# # Create the project
# dotnet new nunit -f $FRAMEWORKTARGET -n $PROJNAME -o .
# # Get rid of the auto-generated *.cs files:
# rm *.cs

# # Tack the file extension on:
# PROJNAME=${PROJNAME}.csproj

# #  copy the .CS files into the new project's dir
# cp -r "${SRCPROJ}"/*.cs .

# #  Need to add "<StartupObject>PCE_StarterProject.Program</StartupObject>" to <PropertyGroup>
# if [ -n "$(xmlstarlet sel -T -t -v "/PropertyGroup/StartupObject" ${PROJNAME})" ]; then
#   echo "StartupObject already defined in ${PROJNAME}"
# else
#   echo "Adding StartupObject to <PropertyGroup> in ${PROJNAME}"
#   xmlstarlet ed -L -s /Project/PropertyGroup -t elem -n StartupObject -v "PCE_StarterProject.Program"  ${PROJNAME}
# fi

# # Now that the project is set up ok, add it to the solution:
# dotnet sln add ${PROJNAME}

# #  In case I wanted to add NuGet packages manually:
# #  dotnet add Test/Test.csproj package nunit
# #  dotnet add Test/Test.csproj package nunit3testadapter
# #  dotnet add Test/Test.csproj package nunit.consolerunner

# # Verify that the project compiles ok:
# dotnet build ${SLNNAME}.sln 
# #  Does this switch force a clean / full rebuild?
# #  --no-inc# ental

# sleep 2s
# # Remove extra junk in prep for .zipping:
# dotnet clean ${SLNNAME}.sln
# rm -rf ./bin
# rm -rf ./obj

# # Package the new project & move it up to the destination di
# echo ZIPNAME: ${ZIPNAME}
# zip -r ${ZIPNAME} .
# mv ${ZIPNAME} ..

# popd

# echo Removing the temp dir ${SUBDIR}
# sleep 2s
# rm -rf $SUBDIR
# # echo REMOVED!