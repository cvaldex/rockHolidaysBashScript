#!/bin/bash

source ../config/config.txt

echo "Copying today Tweets..."

export PGPASSFILE=../pgpass/.pgpass #TO-DO Esto hay que encriptarlo
export TODAY_DATE=$(date +"%Y-%m-%d")

psql -h $DB_HOST -U $DB_USER -d $DB_DBNAME -v a_date=\'$TODAY_DATE\' --file ../sql/insert_today_tweets.sql

echo "Copy process finished!"
