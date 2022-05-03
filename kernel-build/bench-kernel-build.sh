#!/bin/bash

loops=5

make defconfig

for ((i = 0;i < $loops;i++))
do
    time make -s -j12
    make clean
done

cd ../../