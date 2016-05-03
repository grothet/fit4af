#!/bin/bash

echo "Git status wird geprüft"
git status

while [[ $auswahl != "2" ]]
do
	echo " 1: Daten werden in Github hochgeladen"
	echo " 2: Exit"

	read -p "Eingabe: " auswahl

	if [[ $auswahl = "1" ]]
	then
		echo "Hochladen..."
		git add . -A
		read -p "Bezeichnung: " bezeichnung
		git commit -am "$bezeichnung"
		git push origin master
	fi
done
echo "Exit"
