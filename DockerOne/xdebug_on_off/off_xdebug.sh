#!/bin/env bash

# Simple script to enable or disable the xdebug extension
[ -f /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini ] &&  mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated
         service php-fpm restart
         service nginx restart

    echo "Usage: php_debug off"
