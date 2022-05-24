FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
  cron \
  git \
  gzip \
  libbz2-dev \
  libfreetype6-dev \
  libicu-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libonig-dev \
  libpng-dev \
  libsodium-dev \
  libssh2-1-dev \
  libxslt1-dev \
  libzip-dev \
  lsof \
  default-mysql-client \
  vim \
  zip \
  procps

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install \
  bcmath \
  bz2 \
  calendar \
  exif \
  gd \
  gettext \
  intl \
  mbstring \
  mysqli \
  opcache \
  pcntl \
  pdo_mysql \
  soap \
  sockets \
  sodium \
  sysvmsg \
  sysvsem \
  sysvshm \
  xsl \
  zip

RUN yes | pecl install xdebug-2.9.8 \
    && docker-php-ext-enable xdebug \
    && echo xdebug.remote_enable=1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_port=9001 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_autostart=1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_handler=dbgp >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_connect_back=0 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.idekey=PHPSTORM >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_host=172.17.0.1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
 
#for PHP 8.1(Magento 2.4.4)   
#RUN yes | pecl install xdebug-3.1.4 \
#&& docker-php-ext-enable xdebug \    
#&& echo xdebug.mode=develop,coverage,debug >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.discover_client_host=true >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.client_host=172.17.0.1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.client_port=9003 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.start_with_request=yes >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.var_display_max_data=512 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.var_display_max_depth=3 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.var_display_max_children=128 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.cli_color=1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.show_local_vars=0 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump_globals=true >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump_once=true >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump_undefined=false >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump.SERVER=REMOTE_ADDR,REQUEST_METHOD >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump.GET=* >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.dump.POST=* >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.max_stack_frames=-1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.show_error_trace=0 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
#&& echo xdebug.show_exception_trace=0 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

WORKDIR /var/www
CMD ["php-fpm"]
