#!/bin/bash

PASSED=$1

if [ "${PASSED}" = "a" ] ; then
	for i in $( ls -a ); do
		if [ -d "${i}" ] ; then
			echo "Directory:  $i"
		elif [ -x "${i}" ] ; then
			echo "Executable: $i"
		else
			echo "File:       $i"
		fi
	done

else
	for i in $( ls ); do
		if [ -d "${i}" ] ; then
			echo "Directory:  $i"
		elif [ -x "${i}" ] ; then
			echo "Executable: $i"
		else
			echo "File:       $i"
		fi
	done
fi
