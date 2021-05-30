#!/bin/bash

function promedio() {
	
	suma=0
	for valor in $*
	do
		let suma=$valor+$suma
	done

	let prom=$suma/$#
	echo "$prom"

}






