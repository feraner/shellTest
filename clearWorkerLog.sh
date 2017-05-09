#!/bin/bash
logDir=./
fileFlag="application"
if [ -d $logDir ]
then
	cd $logDir
	#date=$(date +%Y%m%d --date '1 days ago')
	date=$(date +%Y%m%d)
	files=$(ls "$fileFlag"*)

	for file in $files
	do
		cp "$file" "$date"-"$file"
		echo "" > "$file"
	done

	#删除7天前的日志文件
	#deleteDate=$(date +%Y%m%d --date '7 days ago')
	deleteDate=$(date +%Y%m%d)
	rm -rf "$deleteDate"-"$fileFlag"*
fi

