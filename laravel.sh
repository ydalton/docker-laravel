#!/bin/sh

source $PWD/env

usage() {
	echo "usage: laravel.sh [start|stop]"
	exit 1
}

# Check if first argument is set
if [ -z $1 ]; then
	usage
fi

case $1 in
	"start")
		docker compose --env-file ./env up -d
		;;
	"stop")
		docker compose --env-file ./env down
		;;
	*)
		usage
		;;
esac

echo $PHP_PROJECT/ > ./.gitignore
