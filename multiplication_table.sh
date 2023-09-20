#!/bin/sh

if [ "$#" -ne 2 ]
then
    echo "Invalid Input"
    exit 1
fi

var1=$1
var2=$2

if [ "$var1" -le 0 ] || [ "$var2" -le 0 ]
then
    echo "Invalid Value"
    exit 1
fi

for i in $(seq 1 $var1)
do
    for j in $(seq 1 $var2)
    do
        result=$(expr $i \* $j)
        echo -n "$i*$j=$result\t"
    done
    echo
done

exit 0
