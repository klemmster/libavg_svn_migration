#/bin/bash
git branch | sed s/..// | grep tag-- | sed s/tag--// |
while read tagname; do
        git tag -a "$tagname" -m "Tag imported from SVN." "tag--$tagname" >/dev/null 2>/dev/null && echo "tagged: $tagname"
done
