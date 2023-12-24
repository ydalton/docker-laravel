#!/bin/sh

source $PWD/env

usage() {
	echo "usage: laravel.sh [start|stop|build]"
	exit 1
}

# Check if first argument is set
if [ -z $1 ]; then
	usage
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
	*)
		usage
		;;
esac

docker compose --env-file ./env $EXEC

echo $PHP_PROJECT/ > ./.gitignore
