#!/bin/sh -e

[ -d logs ] || mkdir logs
logfile=logs/$(date "+%F-%H-%M-%S")_update_system.log
touch $logfile

startTime=$(date +%s)

echo "Running update system script on host $HOSTNAME at $(date)"| tee -a "$logfile"
echo "**************" | tee -a "$logfile"

echo "#Running Update:" | tee -a "$logfile"
sudo apt-get update | tee -a "$logfile"

echo "#Running Upgrade:" | tee -a "$logfile"
sudo apt-get upgrade | tee -a "$logfile"

echo "Should run apt-get dist-upgrade? type 'yes' or 'y' and press ENTER"
read choice
case "$choice" in yes|YES|y|Y )
    echo "#Running Dist-Upgrade:" | tee -a "$logfile"
    sudo apt-get dist-upgrade | tee -a "$logfile";;
    * ) echo "#Info: Not running apt-get dist-upgrade";
esac

echo "Should run apt-get autoremove? type 'yes' or 'y' and press ENTER"
read choice
case "$choice" in yes|YES|y|Y )
    echo "#Running Autoremove:" | tee -a "$logfile"
    sudo apt-get autoremove | tee -a "$logfile";;
    * ) echo "#Info: Not running apt-get autoremove";
esac

echo "#Update system script finished at $(date) within $(($(date +%s)-startTime)) seconds." | tee -a "$logfile"

exit 0
