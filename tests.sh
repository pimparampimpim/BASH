#!/bin/bash
file=$1
chmod +x $1


echo "first test"
./$file > /dev/null
testvivod=`echo $?`
if [[ $testvivod -eq 1 ]]
then
    echo "Test failed"
    exit 1
else
    echo "Test passed"
    exit 0
fi
counter1=0
counter2=0
echo "second test"
./$file 3 8 out_test.txt > /dev/null
for line in $(cat out_test.txt)
do
    for char in line
    do
        counter2=$((counter2+1))
    done
    counter1=$((counter1+1))
done
if [[ $counter1 -eq 3 ]] && [[ $counter2 -eq 24 ]]
then
    echo "Test passed"
    exit 0
else
    echo "Test failed"
    exit 1
fi
