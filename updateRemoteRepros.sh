#/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

find libavg_git -mindepth 1 -maxdepth 1 -type d -execdir sh -c ' \
    cd {} &&
    repName=${PWD##*/}
    git push origin master
    git branch -a | grep -v "exhibtions" | grep -v "master" | sed s/..// |
    while read branchname; do
        git push origin $branchname
    done
    ' \
\;
