#!/bin/bash

while [[ $auswahl != "3" ]]
do
	echo " 1: Status Prüfen"
	echo " 2: Daten werden in Github hochgeladen"
	echo " 3: Exit"

	read -p "Eingabe: " auswahl
	
	if [[ $auswahl = "1" ]]
	then
		echo "Git status wird geprüft"
		git status
	fi

	if [[ $auswahl = "2" ]]
	then
		echo "Hochladen..."
		git add . -A
		read -p "Bezeichnung: " bezeichnung
		git commit -am "$bezeichnung"
		git push origin master
	fi
done
echo "Exit"
