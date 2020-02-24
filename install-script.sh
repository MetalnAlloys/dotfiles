#!/bin/bash

dir=~/.dotfiles
oldir=~/.dotfiles_old
files="
bash_profile
bashrc
config.h
ncmpcpp
vimrc
xinitrc
Xresources
"

echo "Creating $oldir for backup of existing dotfiles"
mkdir -p $oldir
echo "...done"


echo "changing to $dir directory"
cd $dir
echo "...done"


for files in $files; do
    echo "Moving existing dotfiles from ~ to $oldir"
    mv ~/.$file ~/.dotfiles_old
    ln -s $dir/$file ~/.$file
done


