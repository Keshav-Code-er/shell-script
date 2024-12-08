#!/bin/bash

APP_LOGS_DIR=/home/centos/app-log

DATE=$(date +%F: %H:%M:%S)
LOGDIR=/home/centos/shell-script/shell_script-log
##/home/centos/shell-script/shell_script-log/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "Script started executing at $DATE"

while read line; do
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line
done <<<$FILES_TO_DELETE
