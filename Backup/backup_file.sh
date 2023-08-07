#!/bin/bash

#create a function to take a backup of the file

function backup() {
    #create a backup folder
    mkdir Backup
    currnet_date = $date
    cd backup
    cp -r {$1} .
    tar -czvf backup.tar.gz *
    echo "backup completed"
}


backup $1
exit 0
