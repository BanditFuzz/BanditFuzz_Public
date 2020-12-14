#!/bin/sh


#https://askubuntu.com/questions/54747/automatically-kill-a-process-if-it-exceeds-a-given-amount-of-ram
if [ $# -ne 2 ];
then
    echo "Invalid number of arguments"
    exit 0
fi

while true;
do
    SIZE=$(pmap $1|grep total|grep -o "[0-9]*")
    SIZE=${SIZE%%K*}
    SIZEMB=$((SIZE/1024))
    echo "Process id =$1 Size = $SIZEMB MB"
    if [ $SIZEMB -gt $2 ]; then
        printf "SIZE has exceeded.\nKilling the process......"
        kill -9 "$1"
        echo "Killed the process"
        exit 0
    else
        echo "SIZE has not yet exceeding"
    fi

    sleep 10
done