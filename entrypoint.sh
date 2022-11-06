#!/bin/sh -e

start() {
wget https://github.com/hdbjlizhe/fanli/releases/download/debug/autMan_arm64.tar.gz
tar -zxvf autMan_arm64.tar.gz
rm -rf autMan_arm64.tar.gz
chmod 777 autMan
kill -9 autMan
./autMan -t;
}

start
