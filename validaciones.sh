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

function requerir_numero() {

	is_numero $1 
	if [ "$?" -ne 0 ]
	then 
		echo "$2"
		exit $3
	fi
}

function requerir_directorio() {

	if [ ! -d $1 ]
	then
		echo "$2"
		exit $3
	fi
}

function requerir_archivo() {

	if [ ! -f $1 ]
	then
		echo "$2"
		exit $3
	fi
}

function requerir_no_existe_directorio() {

	if [ -d $1 ]
	then
		echo "$2"
		exit $3
	fi

}

function requerir_no_existe_archivo() {

	if [ -f $1 ]
	then
		echo "$2"
		exit $3
	fi

}









