#!/bin/sh

BACKUP_PERIOD="${BACKUP_PERIOD:-60}"

while true;
do
    if [ -f /data/taskmanager.rdb ];
    then
        TS="$(date +%s)"
        cp /data/taskmanager.rdb /backup/$TS.rdb;
        echo "snapshot-backup.sh: info: backup succeeded at $TS";
    else
        echo "snapshot-backup.sh: error: /data/taskmanager.rdb not found";
    fi
    sleep $BACKUP_PERIOD
done