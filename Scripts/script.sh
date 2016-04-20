#!/bin/bash

if [[ ! $1 ]]; then 
	echo "Fehlendes Argument"
	exit 1
fi

scriptname=$1
home_dir="/home/theo/Dokumente/Linux/Scripts"
dateiname="${home_dir}/${scriptname}"

if [[ -e $dateiname ]]; then
	echo "Datei exestiert bereits"
	exit 1
fi

touch $dateiname
