#!/bin/bash

#set -x

if [ -z $1 ]; then
    echo -e "usage:"
    echo -e "\t$ ./download_server.sh <version>"
    echo -e "example:"
    echo -e "\t$ ./download_server.sh 1.12.2"
    exit 1
fi

MINECRAFT_JAR=minecraft_server.$1.jar
wget https://s3.amazonaws.com/Minecraft.Download/versions/$1/$MINECRAFT_JAR

ln -fs $MINECRAFT_JAR minecraft_server.jar
chmod u+x minecraft_server.jar
