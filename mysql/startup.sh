#/bin/bash

# origin from: https://gist.github.com/benschw/7391723
 
if [ ! -f /var/lib/mysql/ibdata1 ]; then
 
#    mysql_install_db
 
    /usr/bin/mysqld_safe &
    sleep 10s
 
    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '54323013' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
 
    killall mysqld
    sleep 10s
fi
 
/usr/bin/mysqld_safe
