#!/usr/bin/expect


set server_name [lindex $argv 0]
set password [lindex $argv 1]
set install_package [lindex $argv 2]


spawn scp -o StrictHostKeyChecking=no init.sh root@$server_name:/root/
expect "password"
send "$password\r"
interact

spawn ssh -o StrictHostKeyChecking=no root@$server_name chmod +x /root/init.sh
expect "password"
send "$password\r"
interact

spawn ssh -o StrictHostKeyChecking=no root@$server_name /root/init.sh -i $install_package
expect "password"
send "$password\r"
interact

