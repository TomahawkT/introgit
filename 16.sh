#!/bin/bash

cant_dir=0
cant_arch=0

for file in $1/*
do
	if [ -d "$file" ]
	then 
		let cant_dir++
	elif [ -f "$file" ]
	then
		let cant_arch++
	fi

done
echo "La cantidad de directorios es: $cant_dir"
echo "La cantidad de archivos es: $cant_arch"

