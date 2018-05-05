#!/usr/bin/env sh

myPid=$$

for myfile in bash_profile bashrc git-completion.sh git-prompt.sh gitignore_global gitconfig ;
do
 if [ -f ~/.$myfile ]; then
  cp -p ~/.$myfile ~/.$myfile.$myPid
  cp -p $myfile ~/.$myfile
 fi
done

if [ -d ~/.bashrc.d ]; then
  mv ~/.bashrc.d ~/.bashrc.d.$myPid
  mkdir ~/.bashrc.d
  cp -p bashrc.d/bashrc* ~/.bashrc.d
fi

cp -p pylintrc ~/pylintrc
