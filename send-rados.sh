echo sending rados.sh to server ceph-client
scp rados.sh ceph-client:~/rados.sh
scp clean.sh ceph-client:~/clean.sh
ssh ceph-client bash ~/rados.sh $1 $2

