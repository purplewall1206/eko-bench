#!/bin/bash
# sudo ./benchmark.sh >test0.txt 2>&1
uname -a

phoronix-test-suite benchmark kernel

echo "===================kernel decompress==================="
cd kernel-decompress

./bench-kernel-decompress.sh

cd ..

echo "===================kernel build==================="

cd kernel-build

./bench-kernel-build.sh

cd ..


echo "===================fs-mark==================="

cd fs_mark

./bench-fs_mark.sh

cd ..

echo "===================lmbench==================="
cd lmbench

for ((i = 0;i < 1;i++))
do
    time sudo make rerun
done

cd ..

echo -e "\n\n"

