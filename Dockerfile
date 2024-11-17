FROM php:8.2-fpm-alpine3.18

ARG user
ARG uid

# Install curl and dependencies first
RUN apk update && \
    apk add --no-cache curl

# Install GD library dependencies (use freetype-dev instead of libfreetype-dev)
RUN apk add --no-cache \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev  # Updated package name

# Install other necessary dependencies
RUN apk add --no-cache \
    libxml2-dev \
    zip \
    unzip \
    shadow \
    supervisor \
    nodejs \
    npm \
    autoconf \
    g++ \
    gcc \
    libc-dev \
    make \
    pkgconf \
    re2c

# Install and configure PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd pdo pdo_mysql pcntl

# Install Redis and enable the extension
RUN pecl install redis && \
    docker-php-ext-enable redis

# Copy Composer from official image
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Set up user
RUN useradd -G www-data,root -u $uid -d /home/$user $user \
    && mkdir -p /home/$user/.composer \
    && chown -R $user:$user /home/$user

# Create the directory for Supervisor logs
RUN mkdir -p /var/log/supervisor && \
    chown -R developer:developer /var/log/supervisor

WORKDIR /var/www
USER $user

# Copy Supervisor configuration files into the container
COPY ./supervisord.conf /etc/supervisord.conf
COPY ./mixpost_horizon.conf /etc/supervisor/conf.d/mixpost_horizon.conf
