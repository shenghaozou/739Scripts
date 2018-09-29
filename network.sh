for i in `seq 1 4`;
do
    ssh ceph-node-$i iperf -c ceph-node-0
done
