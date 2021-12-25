#base imgae
FROM ubuntu:16.04
#UPDATE REPO & install apache2
RUN apt update -y && apt install apache2 -y
#COPY FILE dari local ke container
COPY index.html /var/www/html
#restart apache2
CMD ["apachectl", "-D", "FOREGROUND"]
