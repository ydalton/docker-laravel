#!/bin/sh

PHP_PROJECT=student_administration
cp -f ./.htaccess $PHP_PROJECT/
docker compose up -d

echo $PHP_PROJECT/ > ./.gitignore
