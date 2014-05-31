# Make the switch to git
Trying to push your latest and greatest changes to libavg's svn you were confronted with the following message:

    svn is now read only, for more information visit:
    https://github.com/klemmster/libavg_svn_migration/blob/master/migrate_help.md
    
*libavg* has been moved to github for good.
The following instruction should help you get started and save dangling changes.

## Installing git
Please have a look at the [Gitbook](http://git-scm.com/book/en/Getting-Started-Installing-Git)

## Configure git
If you've never used git before, set your username and e-mail address

```
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

Optionally, but highly recommended, turn on coloured output

```
git config --global color.ui true
```

## Save dangling changes
1. Navigate into the root directory of your libavg copy. (the folder containing the ```src``` directory)
2. Create a patch out of the current changes

    ```svn diff > /tmp/svn_to_git.patch```
3. Navigate to the folder containing libavg

    ```cd ..```
4. Move the libavg directory out of the way

    ```mv libavg libavg_svn_ro```
    
5. Create a [github account](https://github.com/)(optional if registered already)

6. Check Credentials

  If you find your username in [Developers Team](https://github.com/orgs/libavg/teams/developers)
  **skip** to [Check out libavg from github](Check out libavg from github).
  Otherwise follow the guide:  [How to fork a repository](https://help.github.com/articles/fork-a-repo) and replace the *Spoon-Knife* repository with https://github.com/libavg/libavg where appropriate.
  
  **Fork** and **checkout** libavg.
  
  Read on at [8](#8. Navigate into the new libavg folder)
  
7. Check out libavg from github

  If your name is missing either complain to <richy@coding-reality.de> or go back to [6](#6. Check Credentials) now.

    ```git clone https://github.com/libavg/libavg.git```
    
8. Navigate into the new libavg folder

  That should now be present where the svn libavg folder used to be.

    ```cd libavg```
    
    If you worked on a branch make sure to check it out
    
    ```git checkout -t origin/$BRANCHNAME```

9. Apply patch

    ```patch -p0 < /tmp/svn_to_git.patch```
10. Make sure git noticed your changes

    ```git diff```

11. Build and check

   ```./bootstrap && ./configure && make && make check```
12. Add new and changed files to [the staging area](http://git-scm.com/book/en/Getting-Started-Git-Basics#The-Three-States)

    ```git add $FILES```
    
13. Commit the staged files to your local repository

   ```git commit -m "Meaningful commit message"```
   
14. Sync

  Syncronize your local branch with the remote branch

  ```git push```
  
15. Make PullRequest(PR)(Optional)

  If you had to fork libavg, make a pull-request to the branch that you worked on.

Congratulations, you've just made your first change to libavg using git.
  
To continue contributing repeat setps 9-12 and maybe have a look at [contribute](https://www.libavg.de/site/projects/libavg/wiki/Contribute)
