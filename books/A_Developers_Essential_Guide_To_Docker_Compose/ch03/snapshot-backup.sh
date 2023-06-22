#!/bin/sh

while true;
    do cp /data/taskmanager.db /backup/$(data +%s ).rdb;
    sleep $BACKUP_PERIOD;
done