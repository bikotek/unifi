FROM ubuntu
MAINTAINER Unai Bikotek


RUN  echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" > /etc/apt/sources.list.d/100-ubnt.list
RUN  apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
RUN  apt-get update && apt-get -y install unifi 
RUN  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD start.sh /bin
RUN /bin/chmod +x /bin/start.sh

EXPOSE 8080 8443 8843 8880


CMD []
ENTRYPOINT ["/bin/start.sh"]

