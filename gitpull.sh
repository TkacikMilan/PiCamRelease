#!/bin/bash
branch=$1
if [ -z $branch ]
then
	branch=""
fi

echo pulling
git pull  origin main
if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]
then
	echo "press key to close"
	read
fi
