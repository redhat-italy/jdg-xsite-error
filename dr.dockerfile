FROM jdg-6.4.1

MAINTAINER Luigi Fugaro <l.fugaro@gmail.com>

# Setting working directory to "/opt"
WORKDIR /opt

COPY dr /opt/dr
COPY start-dr.sh /opt/

CMD ["true"]
