#This is a docker file
FROM centos:7

RUN yum install telnet httpd -y 
    #mkdir /tmp/photos && \
    #touch /tmp/files
    

LABEL appname="task"
MAINTAINER STUDENT NAME

ENV     WORDPRESS_DB_HOST="localhost" \
        WORDPRESS_USER="wordpress" \
        WORDPRESS_DB="wordpress"

#COPY docker_install.sh /tmp
# COPY . /tmp

ADD https://wordpress.org/latest.zip  /tmp

EXPOSE 80 

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
