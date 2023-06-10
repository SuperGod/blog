#!/bin/bash
for num in {1..10}
do
    ret=`sysbench cpu run --threads=8 --time=20 | grep "events per second" | awk -F ':' '{print $2}'`
    echo "round$num: $ret";
    sleep 20s
done
