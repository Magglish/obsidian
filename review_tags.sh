#!/bin/bash

# this script adds or deleted #review tags
# that are used in spaced repetition obsidian plugin
# author: Marcin Rybiński

set -e

oldIFS=$IFS
action=$1
folder_path=$2
review_tag1=" #review"
review_tag2="#review"

all_notes_to_review=$(find $folder_path -type f -printf "%p;")

IFS=";"
for note_path in $all_notes_to_review
do
    if [ $action == "add" ]
    then
        sed -e s/$review_tag1//g -i $note_path
        sed -e s/$review_tag2//g -i $note_path
        echo -n $review_tag1 >> $note_path
    elif [ $action == "remove" ] 
    then
        sed -e s/$review_tag1//g -i $note_path
        sed -e s/$review_tag2//g -i $note_path
    fi
done
IFS=$oldIFS
