FROM centos:centos6
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Update OS and installs basic tools
RUN yum -y update && \
	yum -y install wget curl telnet mc yum-utils net-tools python-setuptools subversion git && \
	yum clean all && \
	easy_install supervisor

RUN mkdir -p /root/.mc
COPY mc_ini /root/.mc/ini

ENV TERM xterm