## copy files
rm -f /var/www/html/index.html
cp -nrf ../files/php_app.php /var/www/html/index.php
chown www-data:root /var/www/html/index.php
chmod 644 /var/www/html/index.php


## restarting services
service apache2 restart
