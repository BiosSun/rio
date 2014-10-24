# !bin/sh

git branch -D gh-pages
git checkout -b gh-pages
git filter-branch --subdirectory-filter dist/ -f
git checkout master
