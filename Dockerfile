FROM centos:latest
MAINTAINER Anuj
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/education-time.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip education-time
RUN cp -rvf education-time/* .
RUN rm -rf education-time education-time.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
