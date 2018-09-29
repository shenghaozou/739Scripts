#!/bin/bash

sudo rados -p scbench cleanup

str=$(sudo ceph health)
i=0
while [ "$str" != "HEALTH_OK" ]
do
	echo $i
	echo "$str"
	let i=i+1
	if [ $i -lt 10 ]; then
		break
	fi
        sudo rados -p scbench cleanup
	str=$(sudo ceph health)
done
