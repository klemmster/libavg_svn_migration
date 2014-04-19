#Get Started
##Prerequisites
* kde's [svn2git][1] -- don't google it, there are more then one tools with the same name
* git & svn installed
* ~1GB of Diskspace
* [github_cli][2]

#Setup
```
gcli init
gcli authorize
```


#Convert
Have a look at the first link and setup a local svn mirror of libavgs svn
```
#http://cournape.wordpress.com/2007/12/18/making-a-local-mirror-of-a-subversion-repository-using-svnsync/
svnsync sync file:///home/richy/Projects/Archimedes/libavg_gitmigrate/libavg_svn_copy
mkdir libavg_git
cd libavg_git
svn2git --rules ../libavg.rules --identity-map ../authors.txt --add-metadata --stats --add-metadata-notes --dry-run /home/richy/Projects/Archimedes/libavg_gitmigrate/libavg_svn_copy
cd libavg
./../../createTags.sh
#TODO: automatically remove all tag--* br
```

#Resource
http://blog.smartbear.com/software-quality/migrating-from-subversion-to-git-lessons-learned/


  [1]: https://gitorious.org/svn2git%20svn2git
  [2]: https://github.com/peter-murach/github_cli
