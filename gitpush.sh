#!/bin/bash
commitName=$1
if [ -z $commitName ]
then
	commitName="default commit"
fi

echo pushing
git add .
git commit -a -m "$commitName"
git push origin main
if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]
then
	echo "press key to close"
	read
fi

