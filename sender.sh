for i in `seq 1 4`;
do
	echo sending $1 to ceph-node-$i
	scp $1 ceph-node-$i:$1
done
