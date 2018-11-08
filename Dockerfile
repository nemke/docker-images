FROM nemke/docker-images:base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Installing PHP
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y install nodejs && \
yum clean all

EXPOSE 8080

CMD ["node", "param1", "param2", "param3"]