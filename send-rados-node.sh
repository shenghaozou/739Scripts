echo sending rados.sh to server ceph-node-$1
scp rados.sh ceph-node-$1:~/rados.sh
ssh ceph-node-$1 bash ~/rados.sh $2 $3

