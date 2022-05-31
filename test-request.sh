#!/bin/bash

max=1000
for i in $(seq 2 $max); do
    echo $i
    curl -s 192.168.59.103 > /dev/null
done
