for i in 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384
do
curBlock=`expr $i \* 1024`
echo current block size: 
echo $curBlock
./send-rados.sh $curBlock $1
done
