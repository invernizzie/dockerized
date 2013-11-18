#!/usr/bin/env bash
MYSQL_PASSWORD=password

apt-get install -y expect

mysqld_safe &
sleep 5s

mysqladmin -u root password $MYSQL_PASSWORD

MYSQL_SECURE=$(expect -c "

set timeout 10
spawn mysql_secure_installation

expect \"Enter current password for root (enter for none):\"
send \"$MYSQL_PASSWORD\r\"

expect \"Change the root password?\"
send \"n\r\"

expect \"Remove anonymous users?\"
send \"y\r\"

expect \"Disallow root login remotely?\"
send \"y\r\"

expect \"Remove test database and access to it?\"
send \"y\r\"

expect \"Reload privilege tables now?\"
send \"y\r\"

expect eof
")

echo "$MYSQL_SECURE"

apt-get remove -y expect
apt-get autoremove -y

killall mysqld
sleep 10s
