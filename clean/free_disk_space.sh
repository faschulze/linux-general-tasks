#!/bin/sh -e

# clear trash folder
trashsize=$(sudo du -hs ~/.local/share/Trash/ | cut -f 1 -d "	")
echo "Please confirm remove of trash files ("$trashsize" will be freed) by typing 'yes' or 'y' and pressing ENTER"
read choice
case "$choice" in yes|YES|y|Y )
rm -rf ~/.local/share/Trash/*;;
* ) echo "aborting";
esac

# clear cache folder
cachesize=$(du -hs ~/.cache/mozilla/ | cut -f 1 -d "	")
echo "Please confirm remove of cache files ("$cachesize" will be freed) by typing 'yes' or 'y' and pressing ENTER"
read choice
case "$choice" in yes|YES|y|Y )
rm -rf ~/.cache/mozilla/*
echo "Successfully removed cache files.";;
* ) echo "aborting";
esac

# clear local docker images
echo "Please confirm remove of all local images by typing 'yes' or 'y' and pressing ENTER"
read choice
case "$choice" in yes|YES|y|Y )
echo "remove local docker images."
docker rmi -f $(docker images -q)
echo "Successfully finished.";;
* ) echo "aborting";
esac

# clear cowbuilder cache
echo "remove cowbuilder cache."
sudo rm -rf /var/cache/pbuilder/build/cow.*
echo "Successfully finished."

exit 0
