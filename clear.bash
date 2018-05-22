#!/bin/bash
echo "Clearing .cache..."
rm -rf ~/.cache/
mkdir ~/.cache/
echo "Successfully finished."

# clear terminal history
rm ~/.bash_history
touch ~/.bash_history

# empty recycle bin
rm -rf ~/.local/share/Trash/*
