#!/usr/bin/bash
arg=$1

if [[ "$arg" =~ (^[1-9]$) ]]; then
	count=0;
	path="";
	while [ $count -lt $1 ]; do
		path="$path../";
		count=$(( count + 1 ));
	done
	echo "cd $path";
	cd $path;
elif [[ $# -eq 0 ]]; then
	cd ..;
else
	echo "argument needs to be a number between 1 and 9";
fi

