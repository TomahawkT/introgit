#!/bin/bash

function cumple() {

	echo $1 | egrep "$2" &> /dev/null

}

function is_numero() {

	cumple $1 '^[0-9]+$'

}

function is_alpha() {

	cumple $1 '^[a-zA-Z]+$'

}

function requerir_igualdad() {

	if [ "$1" -ne "$2" ]
	then 
		echo "$3"
		exit $4
	fi

}


