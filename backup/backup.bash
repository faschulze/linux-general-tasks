#!/bin/bash

# backup to NFS mount script.
####################################

# What to backup. 
backup_files="/home /var/spool/mail /etc /root /boot /opt"

# Where to backup to.
dest="/media/fs/TOSHIBA-EXT/backup/"

# Create archive filename.
day=$(date +%Y)-$(date +%m)-$(date +%d)
hostname=$(hostname -s)
archive_file="$day-$hostname.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
