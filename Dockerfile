# Use the official WordPress image with PHP 7.4
FROM wordpress:php7.4
# FROM wordpress:latest
# FROM php:7.4.30-fpm-alpine3.17
# FROM php:7.4-fpm-alpine

RUN apt update
RUN apt-get update

# Install phpMyAdmin dependencies
# RUN apt-get update && apt-get install -y \
#     unzip \
#     && rm -rf /var/lib/apt/lists/*

# Set the phpMyAdmin version
ENV PHPMYADMIN_VERSION 5.1.1

# Download and extract phpMyAdmin
#RUN curl -L -o /tmp/phpmyadmin.zip https://github.com/phpmyadmin/phpmyadmin/archive/refs/tags/$PHPMYADMIN_VERSION.zip \
   # && unzip /tmp/phpmyadmin.zip -d /tmp \
  #  && rm /tmp/phpmyadmin.zip \
 #   && mv /tmp/phpmyadmin-$PHPMYADMIN_VERSION /usr/share/phpmyadmin

# Copy phpMyAdmin configuration file
#COPY config.inc.php /usr/share/phpmyadmin/

# Add phpMyAdmin alias
#RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# Set the working directory to the default WordPress installation
WORKDIR /var/www/html

# Copy custom wp-config.php file (optional)
# COPY wp-config.php /var/www/html/

# Expose port 80
EXPOSE 80
