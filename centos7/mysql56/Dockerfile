FROM centos7/base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Install MySQL 5.6
RUN rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm && \
	yum clean all && \
	yum -y install mysql-community-server

ADD my.cnf /etc/my.cnf

VOLUME ["/var/lib/mysql"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]