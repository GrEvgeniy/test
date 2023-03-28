#Загрузить базовый образ Ubuntu 22.04

FROM ubuntu:22.04

#Обновить программный репозиторий Ubuntu
RUN  apt update \

#Установить supervisord
&& apt-get install -y openssh-server supervisor nano lsof  htop ncdu curl wget python3 nginx \
&& apt install software-properties-common -y \ 
&& add-apt-repository ppa:ondrej/php -y \
&& apt update \
&& apt-get install -y php7.4-cli php7.4-fpm php7.4-json php7.4-pdo php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php-pear php7.4-bcmath 
RUN mkdir -p /var/run/sshd /var/log/supervisor
COPY volum/test.conf /etc/supervisor/conf.d/test.conf
COPY volum/1.sh /root
COPY volum/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY volum/index.php /var/www/html/projekt/index.php 
COPY volum/default /etc/nginx/sites-available/default 
WORKDIR /root
CMD [ "/usr/bin/supervisord"  ]
EXPOSE 22 80
