#!/bin/bash

while [[ $auswahl != "4" ]]
do
	Datum=$(date +%Y-%m-%d)

	echo " 1: Status Prüfen"
	echo " 2: Daten werden in Github hochgeladen"
	echo " 3: Daten werden aus Github geladen"
	echo " 4: Exit"

	read -p "Eingabe: " auswahl
	
	if [[ $auswahl = "1" ]]
	then
		echo "Git status wird geprüft..."
		git status
	fi

	if [[ $auswahl = "2" ]]
	then
		echo "Hochladen..."
		git add . -A
		read -p "Bezeichnung: " bezeichnung
		git commit -am "$Datum, $bezeichnung"
		git push origin master
	fi
	
	if [[ $auswahl = "3" ]]
	then
		echo "Runterladen..."
		git pull origin master
	fi

done
echo "Exit..."
