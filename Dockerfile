#This is a docker file
FROM centos:7

RUN yum install git telnet elinks curl wget unzip -y && \
#below code installs terraform
curl -O https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_linux_amd64.zip && \
	unzip terraform_1.0.5_linux_amd64.zip && \
    mv terraform /usr/bin/ && \
#below code installs packer
    rm -rf /usr/sbin/packer && \
    yum install -y yum-utils && \
    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
    yum -y install packer
    #mkdir /tmp/photos && \
    #touch /tmp/files
    
#LABEL appname="task"
#MAINTAINER STUDENT NAME

#ENV     WORDPRESS_DB_HOST="localhost" \
        #WORDPRESS_USER="wordpress" \
        #WORDPRESS_DB="wordpress"

#COPY docker_install.sh /tmp
# COPY . /tmp

#ADD https://wordpress.org/latest.zip  /tmp

#EXPOSE 80 

#CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

# docker build -t   terraform:1.2.7   . 
# docker image tag  terraform:1.2.7     $YOUR_DOCKERHUB/terraform:1.2.7
# docker push $YOUR_DOCKERHUB/terraform:1.2.7

