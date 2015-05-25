FROM centos

MAINTAINER Luigi Fugaro <l.fugaro@gmail.com>

# Installing useful OS dev tools
# RUN yum -y install gcc-c++ boost boost-devel net-tools mlocalte unzip wget vim tar
RUN yum -y install boost net-tools mlocalte unzip wget vim tar hostname

# Setting working directory to "/opt"
WORKDIR /opt

COPY client/lib64 /usr/lib64

COPY client/GO.sh /opt/
COPY client/putter /opt/
COPY client/INT_DF_CMF_QUOTE.txt /opt/

CMD ["true"]
