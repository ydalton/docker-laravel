#!/bin/sh

if [ ! -f ./.env ]; then
	echo "\".env\" file does not exist, did you copy the .env.example file?"
	exit 1
fi

. ./.env

usage() {
	echo "usage: laravel.sh [start|stop|build]"
	exit 1
}

# Check if first argument is set
if [ -z $1 ]; then
	usage
fi

if [ ! -d $PHP_PROJECT ]; then
	echo "Project folder \"$PHP_PROJECT\" in \"env\" file does not exist." \
	     "Is it set correctly?"
	exit 1
fi

case $1 in
	"start")
		EXEC="up -d"
		;;
	"build")
		EXEC=build
		;;
	"stop")
		EXEC=down
		;;
	"shell")
		exec docker exec -u nginx -w /var/www/html -it php sh
		;;
	*)
		usage
		;;
esac

docker compose --env-file ./.env $EXEC

EXCLUDE_FILE=./.git/info/exclude
echo -n > $EXCLUDE_FILE
echo "/$(basename $PHP_PROJECT)" >> $EXCLUDE_FILE
