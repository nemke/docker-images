FROM centos:centos6
MAINTAINER Nemanja Andrejevic <andrejevicnemanja@gmail.com>

# Update OS and installs basic tools
RUN yum -y update && \
	yum -y install wget curl telnet mc yum-utils && \
	yum clean all

RUN mkdir -p /root/.mc
COPY mc_ini /root/.mc/ini