FROM php:7.4-apache-bullseye

#cette partie s'ecrie comme ça car c'est dans apt-get qu'on les prend
# RUN <<EOF 
# apt-get update
# apt-get install --yes 
# apt-get install -y git=1:2.30.2-1+deb11u2 
# apt-get install -y wget=1.21-1+deb11u1 
# apt-get install -y ffmpeg=7:4.3.6-0+deb11u1
# lsb-release
# EOF

RUN apt-get update
RUN apt-get install -y git=1:2.30.2-1+deb11u2 
RUN apt-get install -y wget=1.21-1+deb11u1 
RUN apt-get install -y ffmpeg=7:4.3.6-0+deb11u1

#cette partie s'ecrie comme ça car ce sont des "librairies" pour php
RUN <<EOF
docker-php-ext-install bcmath
docker-php-ext-install sockets
EOF

# RUN docker-php-ext-install bcmath
# RUN docker-php-ext-install sockets

RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -version=2.6.2
EOF

WORKDIR /var/www/html
COPY . .

RUN composer update
RUN composer install
EXPOSE 80


