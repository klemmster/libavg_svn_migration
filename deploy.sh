#/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm libavg_git -rf
mkdir libavg_git
cd libavg_git
svn2git --rules ../libavg.rules --identity-map ../authors.txt --add-metadata --add-metadata-notes /home/richy/Projects/Archimedes/libavg_gitmigrate/libavg_svn_copy
cd $DIR
./createTags.sh
