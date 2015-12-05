FROM centos6/base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

RUN yum-config-manager --add-repo http://rpms.famillecollet.com/enterprise/remi.repo
RUN yum clean all
RUN yum -y --enablerepo=remi-php56 --enablerepo=remi install php-fpm php-mbstring php-imap php-soap gd-last php-gd ImageMagick php-xml php-mysqlnd php-process php-cli php-pear php-bcmath php-intl 

# Configure PHP FPM
RUN echo 'cgi.fix_pathinfo = 0;' >> /etc/php.ini
RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php.ini
ADD www.conf /etc/php-fpm.d/www.conf

# Add Composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer

# Clean up YUM when done.
RUN yum clean all

EXPOSE 9000

ENTRYPOINT /usr/sbin/php-fpm --nodaemonize