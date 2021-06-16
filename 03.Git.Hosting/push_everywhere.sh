#!/bin/bash

printf "Please select folder:\n"
select d in */; do test -n "$d" && break; echo ">>> Invalid Selection"; done
cd "$d"
git add --all
echo "Specify a commit message:"
read commit
git commit -m "$commit"
git push --all bitbucket
git push --all gitlab
git push --all github
echo "All files and branches is pushed!"