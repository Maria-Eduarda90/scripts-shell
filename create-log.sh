#!/bin/bash

name="hacking..."
index=1

while [[ true ]]; do
	(( index=$index+1 ))
	echo "$name$index" >> /tmp/create_log.txt
	sleep 3
done

echo "hello word"
