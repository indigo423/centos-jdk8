FROM centos:7
MAINTAINER ronny@no42.org

ENV JAVA_VERSION 8u92
ENV JAVA_BUILD b14

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD}/jdk-${JAVA_VERSION}-linux-x64.rpm > /tmp/jdk-linux-x64.rpm && \
    yum -y install /tmp/jdk-linux-x64.rpm && \
    rm /tmp/jdk-linux-x64.rpm && \
    yum clean all

