#!/bin/bash

echo "Top CPU Consuming Processes"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

echo "Killing process using more than 80% CPU"

for pid in $(ps -eo pid,%cpu --sort=-%cpu | awk '$2 > 80 {print $1}')
do
   kill -9 $pid
   echo "Killed process ID: $pid"
done