#!/bin/bash

text=$(git remote -v)
textarray=($text)
remote="${textarray[1]}"
current_branch=$(git branch --show-current)
#echo $text
echo "Doing in repo $remote..."
echo "Current branch: $current_branch"

git filter-repo --mailmap ~/mailmap --force

echo "Adding git remote origin..."
git remote add origin $remote
status=$?
[ $status -eq 0 ] && echo "Git add remote was successful" || exit "$status"
git remote -v
echo "Adding git remote origin...DONE"

echo "Pushing changes..."
git push origin $current_branch -f
status=$?
[ $status -eq 0 ] && echo "Pushing changes command was successful" || exit "$status"
echo "Pushing changes...DONE"

echo "Change author info in repo $remote SUCCESS!"


