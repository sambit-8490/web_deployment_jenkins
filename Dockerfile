FROM ubuntu
WORKDIR /web

RUN apt-get update && apt install -y apache2 git
RUN git clone https://github.com/sambit-8490/web_deployment_jenkins
COPY web_deployment_jenkins/* /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
