#!/usr/bin/env bash

target=/dev/nvme0n1p1
mountpoint=/mnt/nvme0n1p1

sudo insmod f2fs.ko

sudo umount $target
sudo mkdir -p $mountpoint
sudo mkfs.f2fs -l wtf -f $target
sudo mount $target $mountpoint