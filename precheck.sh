#!/bin/bash
date >> precheck.out
hostname >> precheck.out
ifconfig -a >> precheck.out
route -n >> precheck.out
df -h >> precheck.out
mount|wc -l >> precheck.out
echo "No of mounts"; mount | wc -l  >> precheck.out
