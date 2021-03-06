FROM ubuntu
MAINTAINER Unai Bikotek

RUN  apt-get update
RUN  apt-get install wget
RUN  echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" > /etc/apt/sources.list.d/100-ubnt.list
RUN  wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ubnt.com/unifi/unifi-repo.gpg 
RUN  echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.4.list
RUN  apt-get update && apt-get -y install unifi 
RUN  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD start.sh /bin
RUN /bin/chmod +x /bin/start.sh

EXPOSE 8080 8443 8843 8880


CMD []
ENTRYPOINT ["/bin/start.sh"]

