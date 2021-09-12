#!/bin/bash
#
# Very basic script for creating modpack releases 

## Check if tmp directory is empty and if not empty it
if [ -d "tmp" ]
then
	if [ "$(ls -A tmp)" ]; then
     rm tmp/* -r
	fi
else
	echo "Directory tmp/ not found."
fi

## Create acedia directory
mkdir tmp/acedia

## Copy file to build directory
cp manifest.json tmp/acedia/
cp modlist.html tmp/acedia/
cp -R overrides/ tmp/acedia/

## Create zip file
cd tmp/acedia/
