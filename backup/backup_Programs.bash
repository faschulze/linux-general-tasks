#!/bin/bash

dpkg --get-selections > ~/Package.list
sudo cp -R /etc/apt/sources.list* ~/
sudo apt-key exportall > ~/Repo.keys

# Further Reading:
# https://askubuntu.com/questions/9135/how-to-backup-settings-and-list-of-installed-packages
