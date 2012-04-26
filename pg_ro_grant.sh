#!/bin/sh

for table in `echo "SELECT relname FROM pg_stat_user_tables;" | psql -A database_name`;
do
    echo "GRANT SELECT ON TABLE $table to readonly_user;"
    echo "GRANT SELECT ON TABLE $table to readonly_user;" | psql -A database_name 
done
