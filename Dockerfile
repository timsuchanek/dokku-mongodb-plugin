#MongoDB Image for MeteorHacks

FROM ubuntu
MAINTAINER Arunoda Susiripala, arunoda.susiripala@gmail.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
RUN apt-get update -y
RUN apt-get install mongodb-10gen=2.4.5
RUN sudo mkdir -p /data/db


CMD ["/usr/bin/mongod"]
