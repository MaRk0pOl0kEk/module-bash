#!/bin/bash
for pattern in $@
do 
dir=$(ls -R | grep $pattern)
if [ "$dir" ]; then
ls -R | grep $pattern
else 
echo "the searched PATH is unexisting"
fi
done  
