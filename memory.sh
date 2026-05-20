#!/bin/bash

echo "Memory Before Cleanup"
free -m

echo "Clearing RAM Cache..."
sync
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

echo "Memory After Cleanup"
free -m