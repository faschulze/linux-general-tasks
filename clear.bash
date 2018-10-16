#!/bin/bash

echo "Clearing cache..."
rm -rf ~/.cache/
mkdir ~/.cache/
echo "Successfully finished."

# clear terminal history
echo "Clearing terminal history..."
rm ~/.bash_history
touch ~/.bash_history
echo "Successfully finished."

# empty recycle bin
echo "Emptying recycle bin..."
rm -rf ~/.local/share/Trash/*
echo "Successfully finished."

# remove VIM history
echo "Removing VIM history..."
rm ~/.viminfo
echo "Successfully removed"

# remove .thumbnails  directory
echo "Removing .thumbnails directory..."
rm -rf ~/.thumbnails/
echo "Successfully finshed."
