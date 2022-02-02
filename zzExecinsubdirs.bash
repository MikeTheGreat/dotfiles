#COMMAND="ls | head -n 2"
COMMAND=$1

# From https://stackoverflow.com/a/25288289/250610:
pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

for subdir in `find . ! -path . -type d -print -maxdepth 1`
do
    echo "Found: " $subdir " =========================== "
    pushd $subdir
    eval $COMMAND
    popd
done

# used with git:
# "git status"
# "git add \"*\""
# "git commit -m \"Feedback from instructor\""
# "git push"
