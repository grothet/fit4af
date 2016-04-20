#!/bin/bash

while [[ $var != "exit" ]]
do
	read -p "Ihr Nachname:" var

	if [[ $var = "ende" ]]
	then
		echo "Hat ende eingegeben"
	elif [[ $var = "stop" ]]
	then
		echo "Hat stop eingegeben"
	else
		echo "Hat blödsinn eingeben"
	fi
done


