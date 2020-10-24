start_date_time="`date "+%Y-%m-%d %H:%M:%S"`"
echo Populating database, this will probably take hours...
echo $start_date_time

mysql -u user --password=pass db < ./AllPrintings.sql

end_date_time="`date "+%Y-%m-%d %H:%M:%S"`"
echo Finished populating databse
echo $end_date_time