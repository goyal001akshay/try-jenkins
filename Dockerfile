FROM centos:latest
RUN yum install httpd -y
RUN service httpd start
ADD index.html /var/www/html/
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
