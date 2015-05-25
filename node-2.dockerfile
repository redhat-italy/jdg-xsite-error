FROM jdg-6.4.1

MAINTAINER Luigi Fugaro <l.fugaro@gmail.com>

# Setting working directory to "/opt"
WORKDIR /opt

COPY node-2 /opt/node-2
COPY start-node-2.sh /opt/

CMD ["true"]
