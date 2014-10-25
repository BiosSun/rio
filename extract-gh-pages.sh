# !bin/sh

git branch -D gh-pages
git checkout -b gh-pages
git filter-branch --subdirectory-filter doc/ -f
git checkout master
