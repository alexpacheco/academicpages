#!/bin/bash
#
#
python3 ../markdown_generator/pubsFromBib.py

for file in *md
do
	sed -i "s/collection: publications/collection: publications\ncategory: manuscripts/g" $file 
done


