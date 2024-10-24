FROM ubuntu
WORKDIR /web

RUN apt-get update && apt install -y apache2 git

COPY web/* /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
