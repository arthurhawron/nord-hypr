#!/bin/bash
files=(~/OnePiece/*)
nextep=$(echo "${files[0]}")
timestamp=$(tr '\r' '\n' < ~/OnePiece/tmp | awk 'END { print $1; }')

if [ $(tr '\r' '\n' < ~/OnePiece/tmp | awk 'END { print $1; }') == "nan" ]
then
	rm $nextep
else
	ffplay $nextep 2> ~/OnePiece/tmp -ss $timestamp
fi
