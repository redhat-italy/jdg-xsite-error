FROM centos

MAINTAINER Luigi Fugaro <l.fugaro@gmail.com>

# Installing useful OS dev tools
# RUN yum -y install gcc-c++ boost boost-devel net-tools mlocalte unzip wget vim tar
RUN yum -y install net-tools mlocalte unzip wget vim tar hostname
RUN yum -y install java-1.7.0-openjdk

# Setting working directory to "/opt"
WORKDIR /opt

# Copying JDG 6.4.1 things and SIA putter test suite
COPY installation/jboss-datagrid-6.4.1-server.zip /opt/

# Installing JDG 6.4.1 and "cpp-client" lib64 files to "/usr/lib64/"
RUN unzip jboss-datagrid-6.4.1-server.zip
RUN rm jboss-datagrid-6.4.1-server.zip

# Setting JAVA_HOME and JBOSS_HOME variables
ENV PATH=$JAVA_HOME/bin:$PATH
ENV JBOSS_HOME=/opt/jboss-datagrid-6.4.1-server

EXPOSE 8080 9990 9999 11222 11211 4447 55200 54200 45688 23364 8009

CMD ["true"]
