#!/bin/sh
set -x
set -e
cd $(dirname $0)

myuser=root
mydb=isu4_qualifier
myhost=127.0.0.1
myport=3306
mysql -h ${myhost} -P ${myport} -u ${myuser} -e "DROP DATABASE IF EXISTS ${mydb}; CREATE DATABASE ${mydb}"
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < sql/schema.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < sql/dummy_users.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < sql/dummy_log.sql

# KAKUNI
sudo find /var/lib/mysql/ -type f |xargs -I % sudo cat %  > /dev/null
sudo echo '' > /var/lib/mysql/slow-query.log

mysql -h ${myhost} -P ${myport} -u ${myuser} -e "use isu4_qualifier;
ALTER TABLE login_log ADD INDEX login_log_test1 (succeeded, user_id);
"
