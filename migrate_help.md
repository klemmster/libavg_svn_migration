# Make the switch to git
Trying to push your latest and greatest changes to libavg's svn you were confronted with the following message:

    svn is now read only, for more information visit:
    https://www.libavg.de/blog/make-the-switch-to-git

libavg has been moved to github for good.

## Save dangling changes
1. Navigate into the root directory of your libavg copy. (the one containing the ```src``` directory
2. Make a patch out of the current changes

    ```svn diff > /tmp/svn_to_git.patch```
3. Navigate to the folder containing libavg

    ```cd ..```
4. Move the libavg directory out of the way

    ```mv libavg libavg_svn_ro```
5. Check out libavg from github

    ```git clone https://github.com/libavg/libavg.git```
6. A new libavg folder should now just have been created where the svn libavg folder used to be
7. Navigate into that folder

    ```cd libavg```

8. Apply patch

    ```patch -p0 < /tmp/svn_to_git.patch```
9. Make sure git recognizes your changes





If you've added your github credentials to 
the [authors.txt](https://github.com/klemmster/libavg_svn_migration/blob/master/authors.txt) skip to [For Members of github's libavg organization]()

## For members of github's libavg organization
