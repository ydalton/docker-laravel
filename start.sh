#!/bin/sh

if [ -z "$PHP_PROJECT" ]; then
	echo "Please run "source ./env" first."
	exit 1
fi

# Check if project folder even exists
if [ ! -d "$PHP_PROJECT" ]; then
	echo "$PHP_PROJECT: no such folder exists. Did you specify the" \
	     "right project folder?"
	exit 1
fi

cp -f ./.htaccess $PHP_PROJECT/
docker compose up -d

echo $PHP_PROJECT/ > ./.gitignore
