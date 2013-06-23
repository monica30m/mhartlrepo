How to make a branch:
$ git checkout -b modify-README
Switched to a new branch 'modify-README'
$ git branch
master
* modify-README

How to edit said branch:
git mv README.rdoc README.md
$ subl README.md

how to commit:
git commit -a -m "Improve the README file"

How to merge the changes to the master branch:
git checkout master
Switched to branch 'master'
$ git merge modify-README

Then tidy by deleting the topic branch:
git branch -d modify-README

If you screw up the branch:
 git checkout -b topic-branch
$ [really screw up the branch]
$ git add .
$ git commit -a -m "Major screw up"
$ git checkout master
$ git branch -D topic-branch

Then push the changes to github:
git push