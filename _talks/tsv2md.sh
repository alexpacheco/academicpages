#!/bin/bash
#
#
python3 ../markdown_generator/talks.py

for file in *md
do
	sed -i 's/type: "Poster"/type: "Poster"\ncategory: poster/g' $file
	sed -i 's/type: "Talk"/type: "Talk"\ncategory: talk/g' $file
	sed -i 's/type: "Contributed Talk"/type: "Contributed Talk"\ncategory: contributed/g' $file
done
