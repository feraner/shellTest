#!/bin/sh

#array to string 
testAry[1]=aa
testAry[2]=bb
testAry[3]=cc
testAry[4]=dd
string1=""
for item in $testAry
do
	$string1=$string1"|"$item;
done
echo $string1;
exit;










# string to array
testStr="fanmeixi|xiaoming|xiaofang|xiaodong|wolfxi|feraner";
OLD_IFS="$IFS";
IFS="|";
array=$testStr;
for s in $array
do
	echo $s;
done
IFS="$OLD_IFS";
