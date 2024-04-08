FROM debian:11
RUN apt update
RUN apt install -y vim wget gnupg2
RUN wget -qO - http://deb.webdna.us/debian8/webdna.key | apt-key add -
RUN echo "deb http://deb.webdna.us/debian8 jessie non-free" >>/etc/apt/sources.list
RUN apt update
RUN apt install -y libapache2-mod-webdna=8.5.1
CMD /etc/init.d/apache2 start;/etc/init.d/webdna start;tail -f /var/log/apache2/error.log
