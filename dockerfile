FROM php:7.4-apache

# Install Xdebug
RUN pecl install -f xdebug
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini;

RUN echo "[XDebug]" >> /usr/local/etc/php/php.ini-development
RUN echo "xdebug.remote_enable = 1" >> /usr/local/etc/php/php.ini-development
RUN echo "xdebug.remote_autostart = 1" >> /usr/local/etc/php/php.ini-development
RUN echo "xdebug.remote_connect_back = 1" >> /usr/local/etc/php/php.ini-development

RUN echo "[XDebug]" >> /usr/local/etc/php/php.ini-production
RUN echo "xdebug.remote_enable = 1" >> /usr/local/etc/php/php.ini-production
RUN echo "xdebug.remote_autostart = 1" >> /usr/local/etc/php/php.ini-production
RUN echo "xdebug.remote_connect_back = 1" >> /usr/local/etc/php/php.ini-production

RUN echo "[XDebug]" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_enable = 1" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_autostart = 1" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_connect_back = 1" >> /usr/local/etc/php/php.ini
