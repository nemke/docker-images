FROM nemke/docker-images:base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Install MySQL
RUN rpm -Uvh https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm && \
	yum clean all && \
	yum -y install mysql-community-server

ADD my.cnf /etc/my.cnf

VOLUME ["/var/lib/mysql"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]