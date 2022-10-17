#!/bin/env bash

# Simple script to enable or disable the xdebug extension

    [ -f /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated ] && mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
     service php-fpm restart
     service nginx restart


    echo "Usage: php_debug on"

