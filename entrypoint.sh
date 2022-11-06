#!/bin/sh -e

start() {
	s=autMan;f=fanli;a=arm64;if [[ $(uname -a | grep "x86_64") != "" ]];then a=amd64;fi ;if [ ! -d $s ];then mkdir $s;fi ;cd $s;wget https://github.com/hdbjlizhe/${f}/releases/download/debug/autMan_$a.tar.gz && tar -zxvf autMan_$a.tar.gz && rm -rf autMan_$a.tar.gz && chmod 777 $s;pkill -9 $s;$(pwd)/$s -t;
}

start
