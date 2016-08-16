#!/bin/bash
##############################################
# This script creats symlinks from the home directory to any desired dotfiles in ~/.dotfiles

##############################################

################ Variables
dir=~/.dotfiles
olddir=~/.dotfiles_old
files="vimrc proxychains" 	#list of files/folders to symlink in homedir

################

# create dofiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir dirctory ..."
cd $di
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, 
# then create symlinks from homedir to any files int the ~/.dotfiles 
# directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/$oldfiles_old/
	echo "Creating symlink to $file in home dirctory."
	ln -s $dir/$file ~/.$file
done

# continue... 
#install_zsh() 
# install_
