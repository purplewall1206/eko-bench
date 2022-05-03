#!/bin/bash

loops=10

for ((i = 0;i < $loops;i++))
do
    time tar xf linux-4.19.239.tar.xz
    rm -rf linux-4.19.239/
done