./clean.sh
echo RADOS_TEST_START
echo "RADOS_TEST(write test $1)"
sudo rados bench -p scbench -b $1 $2 write --no-cleanup
echo "RADOS_TEST(seq test $1)"
sudo rados bench -p scbench $2 seq
echo "RADOS_TEST(rand test $1)"
sudo rados bench -p scbench $2 rand
echo RADOS_TEST_END
./clean.sh
