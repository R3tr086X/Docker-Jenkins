FROM php:8.2-apache

# Instalar extensión MySQL para PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Crear usuario sin privilegios
RUN useradd -ms /bin/bash mgarfer1604

# Cambiar permisos
RUN chown -R mgarfer1604:mgarfer1604 /var/www/html

# Usar usuario no root
USER mgarfer1604
