FROM php:8.2-apache

# Extensiones necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Permisos correctos para Apache
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# Seguridad básica (opcional)
USER www-data
