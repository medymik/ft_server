FROM debian:buster
RUN apt-get update
RUN apt-get -y upgrade
#database
RUN apt-get install mariadb-server -y
RUN apt-get install nginx -y
RUN apt-get install wget -y
RUN apt-get install php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cli php-fpm php-cgi -y
RUN apt-get -y install php-mysql
RUN apt-get install -y libnss3-tools
COPY srcs /tmp
#database
RUN bash /tmp/mysql/mysql_init.sh
#nginx
RUN bash /tmp/nginx/nginx_init.sh
#wordpress
RUN bash /tmp/wordpress/wordpress_init.sh
CMD bash /tmp/init.sh && tail -f /dev/null

