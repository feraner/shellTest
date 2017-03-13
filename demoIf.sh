#!/bin/sh
# demoIf leaning

#empty cmd
if [ '2' -gt '1' ]
then
	#nothing to do 
	:
else
	echo 'you wrong'
fi
exit 0;


# test arguments
if [ $# -ne 2 ]
then
	echo 'please input 2 arguments'
	exit 1
else 
	echo $1
	echo $2
fi
exit 0



# test the file authority
currentFile=`basename $0`
if [ -w $currentFile ]
then
	echo $currentFile' is able write '
	if [ -x $currentFile ]
	then
		echo $currentFile' is able run'
		if [ -x $currentFile -a -w $currentFile ]
		then
			echo $currentFile' is able write and run'
		fi
	fi
else
	echo $currentFile' is not write'
fi
exit 0


#if pwd
DIRECTORY=`pwd`
if [ $DIRECTORY = '/' ]
then
	echo 'this root directory'
else
	echo 'the curren directory is not the root directory , the value:'$DIRECTORY
fi
exit 0



#print this file name   basename $0 is self name
echo `basename $0`
exit 0

# grep if and entry
echo -n 'please input a list names'
read listname
if echo $listname | grep 'fanmeixi' > /dev/null 2>&1
then
	echo 'yes ,has include name is fanmeixi'
else
	echo 'no, please again'
fi
exit 0

# grep if 
if grep 'feraner' /etc/passwd > /dev/null 2>&1
then
	echo 'has feraner user'
else
	echo 'do not has feraner user'
fi
exit 0



#test string eq 
echo -n "enter your name :"
read name
if [ -z $name ]
then
	echo "name is empty"
fi


