#!/usr/bin/env bash

sudo umount /dev/nvme0n1p1
target=/dev/nvme0n1p1


sudo fio -filename=$target -fallocate=none -direct=1 -iodepth 32 -rw=randwrite -ioengine=sync -bs=4K -size=1G -name=write --group_reporting -fsync=1