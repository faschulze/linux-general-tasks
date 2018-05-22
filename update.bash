[ -d logs ] || mkdir logs #if /logs directory not existent, make it
dt=$(date)
cd logs
log_file=logs/update_script.log
touch $log_file
cd ..
startTime=$(date)
start=$(date +%s)
echo "**************" | tee -a "$log_file"
echo "Running .bash on host $HOSTNAME at $startTime"| tee -a "$log_file"
echo "#Running Update:" | tee -a "$log_file"
sudo apt-get update | tee -a "$log_file"
echo "#Running Dist-Upgrade:" | tee -a "$log_file"
sudo apt-get dist-upgrade | tee -a "$log_file"
echo "#Running Autoremove:" | tee -a "$log_file"
sudo apt-get autoremove | tee -a "$log_file"
endTime=$(date)
end=$(date +%s)
totalExecTime=$((end-start))
echo "#Bash finished at $endTime within $totalExecTime seconds." | tee -a "$log_file"
