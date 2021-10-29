#!/bin/bash

BASEDIR=$(dirname "$0")
TOPDIR=$BASEDIR/..

find $TOPDIR/data -type f -name "*.psg" -print0 | while read -d $'\0' file
do
	echo "Processing" $file
	$PSGBIN/psg-cp-gen $file ${file%.*}.cp
	echo "Done processing" $file
done

