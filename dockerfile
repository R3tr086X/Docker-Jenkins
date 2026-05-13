FROM php:8.2-apache

# Crear usuario sin privilegios
RUN useradd -ms /bin/bash mgarfer1604

# Copiar código
COPY . /var/www/html/

# Cambiar permisos
RUN chown -R mgarfer1604:mgarfer1604 /var/www/html

# Ejecutar como usuario no root
USER mgarfer1604
