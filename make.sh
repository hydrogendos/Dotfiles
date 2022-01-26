#!/bin/bash
############################
#.make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

# source dotfiles directory
sourcedir=/media/tora/Storage/Prog/Dotfiles

# dotfiles directory that is actually being used
dir=/home/tora/Prog/Dotfiles

# old dotfiles backup directory
olddir=/media/tora/Storage/Prog/Dotfiles_Old

# list of files/folders to symlink in homedir
files="bashrc bash_aliases tmux.conf"

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in $dir ..."
mkdir -p $olddir
echo "done"

# copy this script to homedir
echo -n "Copying script to $dir ..."
cp -f $sourcedir/make.sh $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, and copy dotfiles from storage into the homedir, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Backing up any existing dotfiles from $dir to $olddir"
    mv $dir/$file $olddir
    echo "Copying dotfiles from $sourcedir to $dir"
    cp -f $sourcedir/$file $dir
    echo "Creating symlink to $file in home directory."
    ln -sf $dir/$file ~/.$file
done
