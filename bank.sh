#!/bin/bash

packagename=${1:?"Require a package name"}
sntserver=http://sandwichandtoast.com
if [ "$2"="nc" ]; 
then
	$1
else
echo Connect to the our server and find $packagename
wget $sntserver/alias.sh
chmod 777 alias.sh 
./alias.sh
apt-get install $packagename >> log.txt
echo If you want to see install log type bank seelog nc 
fi
