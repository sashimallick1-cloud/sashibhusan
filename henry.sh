#!/bin/bash

echo "Disk Usage Before Cleanup"
df -h

echo "Cleaning old logs..."
find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Cleaning temp files..."
rm -rf /tmp/*

echo "Cleaning cache..."
sync; echo 3 > /proc/sys/vm/drop_caches

echo "Disk Usage After Cleanup"
df -h