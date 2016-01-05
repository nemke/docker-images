FROM centos6/base
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Install nginx
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx && yum clean all

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir -p /etc/service/nginx
ADD start.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

CMD ["/etc/service/nginx/run"]

EXPOSE 80