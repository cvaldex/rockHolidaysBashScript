#!/bin/bash

#Move to sources directory
cd $HOME/rockHolidaysBashScript/script

source ../config/config.txt

echo "Cleaning today Tweets..."

export PGPASSFILE=../pgpass/.pgpass #TO-DO Esto hay que encriptarlo
export TODAY_DATE=$(date +"%Y-%m-%d")
CURRENT_DATE=$(date +"%Y%m%d_%H%M%S")
LOCAL_PATH=$HOME/rockHolidaysBashScript
LOG_FILE=$LOCAL_PATH/log/$CURRENT_DATE.txt

psql -h $DB_HOST -U $DB_USER -d $DB_DBNAME -v a_date=\'$TODAY_DATE\' --file ../sql/clean_today_tweets.sql >> $LOG_FILE 2>&1

cat $LOG_FILE | mail -s "Limpieza de tabla diaria $CURRENT_DATE" todayinrockhistorytwitter@gmail.com

echo "Cleaning process finished!"
