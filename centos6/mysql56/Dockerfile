FROM centos6/base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Install MySQL 5.6
RUN rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm && \
	yum clean all && \
	yum -y install mysql-community-server

ADD my.cnf /etc/my.cnf

VOLUME /var/lib/mysql

RUN mkdir -p /docker
COPY docker-entrypoint.sh /docker/entrypoint.sh
RUN chmod +x /docker/entrypoint.sh
ENTRYPOINT ["/docker/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]