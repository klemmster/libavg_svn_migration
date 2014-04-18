#/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd libavg_git
rm log*

cd $DIR

find libavg_git -mindepth 1 -maxdepth 1 -type d -exec sh -c ' \
    cd {} &&
    # create tags from tag-branches
    git branch | sed s/..// | grep tag-- | sed s/tag--// |
    while read tagname; do
       git tag -a "$tagname" -m "Tag imported from SVN." "tag--$tagname" >/dev/null 2>/dev/null && echo "tagged: $tagname"
    done

    # delete tag -branches

    git branch | sed s/..// | grep tag-- |
    while read branchname; do
        git branch -D $branchname
    done

    cd $DIR
    ' \
\;

