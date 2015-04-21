#!/bin/bash
# LCTT-flsf
# 使用PO生成MAN
# 在man-pages目录下./po2man [name] 比如 ./po2man ls 就可以在man/zh_CN.UTF-8/man1下生成ls.1

ARGCOUNT=1
E_FILE_NOT_EXIST=71

if [ $# -ne "$ARGCOUNT" ]
then
	echo "Usage: `basename $0` filename"
	exit $E_WRONGARGS
fi


FILENAME="po/man1/"$1".1.po"


if [ ! -e "$FILENAME" ]
then 
	echo "File \""$FILENAME"\" does not exitst."
	exit $E_FILE_NOT_EXIST
fi

po4a-translate -f man -m man/man1/"$1".1 -M utf8 -p $FILENAME -l man/zh_CN.UTF-8/man1/"$1".1
