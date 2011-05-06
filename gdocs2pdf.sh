#!/bin/bash
 
# usage: gdocs2pdf.sh <file> 
 
TITLE=$(basename $1)
DIR=$(dirname $1)
FOLDER=GDocs2Pdf
GOOGLECL=/usr/local/bin/google
 
[ $# -eq 1 ] || { echo "usage: $(basename $0) <file>"; exit 1; }
 
echo $GOOGLECL docs upload --title=$TITLE --folder=$FOLDER $1
$GOOGLECL docs upload --title=$TITLE --folder=$FOLDER $1
 
echo $GOOGLECL docs get --format=pdf --title=$TITLE --folder=$FOLDER --dest=$DIR
$GOOGLECL docs get --format=pdf --title=$TITLE --folder=$FOLDER --dest=$DIR
