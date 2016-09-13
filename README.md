# docker-symfony
Simple symfony 2 docker project with :

    - Apache Server
    - php 5.6
    - mysql

Init your symfony project under symfony folder
 See http://symfony.com/doc/current/setup.html

 e.g : with symfony installer for version 2.8 :
 symfony new symfony 2.8


docker-compose up

Application is available at http://symfony.dev !

Configurations files are under :

apache-php/apache :
   - apache2.conf
   - symfony.conf -> vhost

apache-php/php :
  - php.ini

To rebuild :

 - docker-compose build
