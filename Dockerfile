FROM debian:buster
RUN apt update
RUN apt -y upgrade
COPY srcs /tmp
#database
RUN apt install mariadb-server -y
RUN service mysql start
RUN bash /tmp/setup_config/mysql_init.sh