cd
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz wordpress
cp -Rf wordpress /var/www/localhost

mv /tmp/wordpress/wp-config.php /var/www/localhost/wordpress