FROM ubuntu

RUN apt update
RUN apt install nginx -y

COPY index.html var/www/html/index.nginx-debian.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
