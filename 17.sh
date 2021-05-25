#!/bin/bash

if [ $# -ne 1 ]
then
	echo "El programa tiene que tener una sola variable"
	exit 1
fi
echo $1 | egrep '^[0-9]$' &> /dev/null

if [ $? -ne 0 ]
then 
	echo "El valor introducido no es un numero del 0 al 9"
	exit 2
fi

counter=1
while [ $counter -lt 11 ]
do
	let multi=$1*$counter
	echo "$1 * $counter = $multi"
	let counter++
done