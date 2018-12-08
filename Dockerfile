FROM nemke/docker-images:base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Install Nginx
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx && \
yum clean all

# Configuring Nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
ln -sf /dev/stderr /var/log/nginx/error.log && \
rm -rf /etc/nginx/conf.d/default.conf

# Installing PHP
RUN yum-config-manager --add-repo http://rpms.famillecollet.com/enterprise/remi.repo && \
yum -y --enablerepo=remi-php72 --enablerepo=remi install php-fpm php-mbstring php-soap gd-last php-gd ImageMagick php-xml php-mysqlnd php-process php-cli php-pear php-bcmath php-mcrypt php-intl php-pecl-zip php-opcache php-gmp php-xdebug php-amqp && \
yum clean all && \
chown root:nginx -R /var/lib/php/session && \
chown root:nginx -R /var/lib/php/wsdlcache

# Configuring PHP FPM
RUN echo 'cgi.fix_pathinfo = 0;' >> /etc/php.ini && sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php.ini
RUN mkdir -p /run/php-fpm/
ADD www.conf /etc/php-fpm.d/www.conf

# Add Composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer

# Exposing ports
EXPOSE 80 9000

# Configuring supervisor
ADD supervisord.conf /etc/supervisord.conf

# Setting up docker entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["supervisord", "-n"]