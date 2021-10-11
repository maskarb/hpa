FROM php:5-apache
ADD index.php /var/www/html/index.php
RUN chmod a+rx index.php
CMD sed -i "s/80/8080/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf && docker-php-entrypoint apache2-foreground
