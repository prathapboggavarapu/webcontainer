FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/nginx.conf

ADD ./webdata /webdata

EXPOSE 80
CMD ["nginx"]
