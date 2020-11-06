#!/bin/bash

ServerIP=$1

function checkServer {
    if [ "$(ping -c 1 $ServerIP)" ]
    then
        echo Ok
    else
        echo Not Ok
    fi
}

while true
do
    checkServer
    sleep 30
done