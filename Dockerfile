FROM alpine:3.8

LABEL maintainer="hinet <63603636@qq.com>"

RUN mkdir -p /usr/local/java
RUN tar xvf jdk-8u60-linux-x64.tar.gz
RUN wget http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.tar.gz
COPY jdk-8u172-linux-x64/* /usr/local/java/jdk
RUN ln -s /usr/java/jdk1.8.0_60/ /usr/jdk

RUN apk add -U --no-cache \
    nginx \
