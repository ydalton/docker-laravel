#!/bin/sh

if [ -z "$PHP_PROJECT" ]; then
	echo "Please run "source ./env" first."
	exit 1
fi

cp -f ./.htaccess $PHP_PROJECT/
docker compose up -d

echo $PHP_PROJECT/ > ./.gitignore
