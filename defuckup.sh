#!/bin/bash
sourcedir=`pwd`
OIFS="$IFS"
IFS=$'\n'
for f in `find . -type d -links 2`
do
######BASIC STEP#######
cd $f
echo "changed dir to $f"
foldername=${PWD##*/}
filename=f$foldername
cat * > $filename
echo "merged $foldername"
mv $filename ..
rm *
cd ..
rmdir $foldername
mv $filename $foldername
echo "removed dir $foldername, back to the source"
cd $sourcedir
#########################
done
