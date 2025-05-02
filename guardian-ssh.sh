#!/bin/bash
set -e # gestione errori 
##############################
###### Secure your System ########
##############################
##############################
##############################
######### By .MagicSale ######
##############################
##############################
###### version.1.0.0. ########
##############################

if [[ "$EUID" -ne 0 ]]; then 
    echo "Run as root"
    exit 0
fi

file_log="/root/ssh_log.log"


if [[ ! -f $file_log ]]; then
    touch $file_log
fi

while true; do
    data=$(date +%Y-%m-%d_%H:%M)

    echo "Controllo su sshd......"
    service=$(lsof -i :22 -n -P | grep "ESTAB")
    if [[ ! -z $service ]]; then
        echo "Connessione ssh rilevata...... - $data" | tee -a $file_log

        target_ssh=$(lsof -i :22 -n -P | grep "ESTAB" | awk -F "22->" '{print $2}' | awk '{print $1}' | awk -F ":" '{print $1}')

        for user in $target; do 
            pid=$(lsof -i :22 -n -P | grep "ESTAB" | awk -F "sshd" '{print $2}' | awk '{print $1}')
            name=$(lsof -i :22 -n -P | grep "ESTAB" | awk -F "sshd" '{print $2}' | awk '{print $2}' | head -n 1)
            kill -9 $pid &> /dev/null
            echo "$user ha cercato di fare il furbo!" | tee -a $file_log
            echo "loggato con: $name" | tee -a $file_log            
        done 
        echo "-----------------------" | tee -a $file_log
        echo "-----------------------" | tee -a $file_log
        echo "-----------------------" | tee -a $file_log


    fi

    sleep 10
    
done
