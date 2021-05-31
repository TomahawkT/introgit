#!/bin/bash
. ./validaciones.sh
#GENERA UN NUMERO DE 1 AL 100
random_number=$(( $RANDOM % 101 ))

function guesser_loop() {

	for i in 1 2 3 4 5
	do	
		echo "Introduzca un numero"
		read guess

		if [ "$guess" -eq "$random_number" ]
		then
			echo "Ese era el numero, felicitaciones"
			exit 1
		elif [ "$guess" -lt "$random_number" ]
		then
			echo "Ese numero es mas bajo"
		else
			echo "Ese numero es muy grande"
		fi
	done
	echo "Te quedaste sin intentos, el numero era $random_number"
}
guesser_loop