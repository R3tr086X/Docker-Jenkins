FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Crear usuario sin privilegios con el nombre requerido
RUN useradd -r -s /bin/false mgarfer1604

# Copiar la aplicación
COPY index.php /var/www/html/

# Cambiar propietario
RUN chown -R mgarfer1604:mgarfer1604 /var/www/html

# Ejecutar como ese usuario (no root)
USER mgarfer1604
