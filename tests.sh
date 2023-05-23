#!/bin/bash
file=$1


echo "first test"
./$file > /dev/null
testvivod=`echo $?`
if [[ $testvivod -eq 1 ]]
then
    echo "Test passed"
else
    echo "Test failed"
    exit 1
fi
countera=0
counterb=0
echo "second test"
./$file 3 8 out_test.txt > /dev/null
for line in $(cat out_test.txt)
do
    len=`echo -n $line | wc -c`
    counterb=$((counterb+len))
    countera=$((countera+1))
done


if [[ $countera -eq 3 ]] && [[ $counterb -eq 24 ]]
then
    echo "Test passed"
    exit 0
else
    echo "Test failed"
    exit 1
fi

