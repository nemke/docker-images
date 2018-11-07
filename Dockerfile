FROM centos7/base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Installing PHP
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y install nodejs && \
yum clean all

CMD ["node"]