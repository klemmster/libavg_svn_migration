#/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

find libavg_git -mindepth 1 -maxdepth 1 -type d -execdir sh -c ' \
    cd {} &&
    repName=${PWD##*/}
    gcli repo create -o libavg --home="https://www.libavg.de" --issues=true --wiki=false --quiet=true $repName
    git remote add origin github:libavg/$repName.git
    git push -u origin master
    git branch -a | grep -v "exhibtions" | grep -v "master" | sed s/..// |
    while read branchname; do
        git push -u origin $branchname
    done
    ' \
\;
