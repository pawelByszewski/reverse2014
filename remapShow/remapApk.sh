#!/bin/sh
rm remap_temp.jar
rm temp.jar

d2j-dex2jar.sh -f -d -o temp.jar $1
d2j-jar-remap.sh -f -c $2 -o remap_temp.jar  temp.jar
#d2j-jar2dex.sh -f -o classes.dex remap_temp.jar
#zip -r $1 classes.dex
