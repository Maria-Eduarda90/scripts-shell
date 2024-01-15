#!/bin/bash

emails=("teste@gmail.com" "testeteste@gmail.com" "maria@hotmail.com")

for (( X=0; X<${#emails[*]}; X++ ))
do 
	echo Enviando email para: ${emails[$X]}
	sleep 3
	echo Email enviado...
done
