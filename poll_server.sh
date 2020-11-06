#!/bin/bash

function checkServer {
    ping -c 1 -W 5 $1 &> /dev/null
    rc=$?

    if [[ $rc -eq 0 ]]
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