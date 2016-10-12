FROM centos:centos6
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Update OS and installs basic tools
RUN yum -y update && \
	yum -y install wget curl telnet mc yum-utils net-tools python-setuptools subversion git && \
	yum clean all && \
	easy_install supervisor && \
	wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm && \
	rpm -ivh epel-release-6-8.noarch.rpm

RUN mkdir -p /root/.mc
COPY mc_ini /root/.mc/ini

ENV TERM xterm