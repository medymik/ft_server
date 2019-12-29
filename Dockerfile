FROM debian:buster
RUN apt-get update
RUN apt-get -y upgrade
#database
RUN apt-get install mariadb-server -y
COPY srcs /tmp
RUN bash /tmp/setup_config/mysql_init.sh
#CMD bash /tmp/init.sh && tail -f /dev/null