#!/bin/sh
#this shell is case test
echo 'enter you number:'
read number
case $number in 
	1) echo 'you select 1'
		;;
	2) echo 'you select 2'
		;;
	5) echo 'this is your lucky'
esac
