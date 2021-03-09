## to start
rm -f /var/www/html/index.html
cp -nrf ../files/php_app.php /var/www/html/index.php
chown www-data:root /var/www/html/index.php
