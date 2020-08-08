#Mycat
FROM centos:7
WORKDIR /app
ADD Mycat-server-1.6.7.4-release-20200105164103-linux.tar.gz .
RUN yum install -y java-1.8.0-openjdk-devel.x86_64 gettext nmap-ncat openssl telnet \
 && yum clean all -y

#Mycat版本
ENV MYCAT_VERSION 1.6.7.4

ENV MYCAT_HOME /home/mycat

RUN mv /app/mycat /home/ && chmod u+x ${MYCAT_HOME}

EXPOSE 8066 9066

ENV PATH=$PATH:$MYCAT_HOME/bin

WORKDIR ${MYCAT_HOME}/bin

CMD ["./mycat","console"]
