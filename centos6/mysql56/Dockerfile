FROM centos:centos6
MAINTAINER Nemanja Andrejevic <nemanja.andrejevic@rovicom.net>

# Install MySQL 5.6
RUN yum -y update
RUN yum -y install wget curl telnet
RUN rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm

RUN yum clean all
RUN yum -y install mysql-community-server

ADD mysql-init /usr/bin/mysql-init
RUN chmod +x /usr/bin/mysql-init
RUN /usr/bin/mysql-init

ADD mysql-start /usr/bin/mysql-start
RUN chmod +x /usr/bin/mysql-start

ADD my.cnf /etc/my.cnf

EXPOSE 22 3306

ENTRYPOINT ["/usr/bin/mysql-start"]