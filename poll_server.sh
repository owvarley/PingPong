#!/bin/bash

function checkServer {
    if [ "$(ping -c 1 $1)" ]
    then
        echo $1 Ok
    else
        echo $1 not Ok
    fi
}

while true
do
    checkServer $SERVER_A
    checkServer $SERVER_B
    sleep $TIME_BETWEEN_PINGS_S
done