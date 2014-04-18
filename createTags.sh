#/bin/bash

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

