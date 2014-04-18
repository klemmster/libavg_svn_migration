#/bin/bash

# cd libavg_git/libavg
curl -u 'klemmster' https://api.github.com/orgs/libavg/repos -d '{"name":"libavg", "homepage":"https://www.libavg.de", "has_wiki":"False", "has_downloads":"False"}'
git remote add origin github:libavg/libavg.git
git push -u origin master
