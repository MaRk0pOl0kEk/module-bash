#!/bin/bash
if [ "$#" == 4 ]; then
  for i in 2 3 4;
  do
    echo "$i" $(grep -o $i $1 | wc -l)
    grep -n $i $1 | cut --delimiter=':' -f 1
  done
else
  exit 1
fi
