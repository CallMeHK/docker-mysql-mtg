# curl https://mtgjson.com/api/v5/AllPrintings.sql.xz -O
# xz -d -v AllPrintings.sql.xz
# psql -d db -U user -p 5432 -a -f ./AllPrintings.sql

start_date_time="`date "+%Y-%m-%d %H:%M:%S"`"
echo Populating database, this will take a while...
echo $start_date_time

mysql -u user --password=pass db < ./AllPrintings.sql

end_date_time="`date "+%Y-%m-%d %H:%M:%S"`"
echo Finished populating databse
echo $end_date_time

