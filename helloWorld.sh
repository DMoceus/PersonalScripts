#!/bin/bash

HELLO=Hello

function hello {
	local HELLO=World
	echo "In The Function"
	echo $HELLO
}
echo "Outta the Function"
echo $HELLO
hello
echo "Outta the Function again!"
echo $HELLO
