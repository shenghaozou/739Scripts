mkdir disk
for i in `seq 1 4`;
do
	echo running dd in ceph-node-$i
	ssh ceph-node-$i dd if=/dev/zero of=here bs=1G count=1 oflag=direct > disk/disk-$i.log
done
