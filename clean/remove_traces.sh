#!/bin/sh -e

# clear terminal history
echo "Clearing terminal history..."
rm ~/.bash_history
touch ~/.bash_history
echo "Successfully finished."

# remove VIM history
echo "Removing VIM history..."
rm ~/.viminfo
echo "Successfully removed"

# remove .thumbnails  directory
echo "Removing .thumbnails directory..."
rm -rf ~/.thumbnails/
echo "Successfully finshed."

# vanish keepass db entries
echo "Vanishing KeePass DB history..."
rm ~/.recently-used
echo "Successfully finished."

# remove Skype Known Hosts
echo "Removing Skype Known Hosts."
rm ~/.wget-hsts 
echo "Successfully finished."

# clean journal logs 
echo "clean journal logs."
sudo journalctl --vacuum-time=3d
echo "Successfully finished."

exit 0
