#!/bin/bash

#max=1000
#for i in $(seq 2 $max); do
#    echo $i
#    curl -s 192.168.59.103 >/dev/null
#done

#while sleep 0.01; do wget -q -O- http://192.168.59.103 > /dev/null; done

kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 1; do wget -q -O- http://backend-svc:3000/calculator;  done"
