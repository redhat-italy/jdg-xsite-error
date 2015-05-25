FROM jdg-6.4.1

MAINTAINER Luigi Fugaro <l.fugaro@gmail.com>

# Setting working directory to "/opt"
WORKDIR /opt

COPY node-1 /opt/node-1
COPY start-node-1.sh /opt/

CMD ["true"]
