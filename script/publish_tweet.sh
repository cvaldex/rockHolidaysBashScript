#!/bin/bash

source ../config/config.txt
source ../config/passwords.txt

PROCESS_NAME="Publish Tweet"
CURRENT_DATE=$(date +"%Y%m%d_%H%M%S")
LOCAL_PATH=$HOME/rockHolidaysBashScript
LOG_FILE=$LOCAL_PATH/log/$CURRENT_DATE.txt

echo "[$PROCESS_NAME] Starting process"

echo "java -jar $HOME/rockHolidaysBatch/target/rockholidaysbatch.jar $DB_HOST $DB_PORT $DB_DBNAME $DB_USER $DB_PASSWORD > $LOG_FILE"

java -jar $HOME/rockHolidaysBatch/target/rockholidaysbatch.jar $DB_HOST $DB_PORT $DB_DBNAME $DB_USER $DB_PASSWORD > $LOG_FILE

cat $LOG_FILE | mail -s "Resultado publicación tweet $CURRENT_DATE" todayinrockhistorytwitter@gmail.com

echo "[$PROCESS_NAME] Process Finished!"
