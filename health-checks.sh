#!/bin/bash

echo "===== SERVER HEALTH ====="

echo
echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "Logged in Users:"
who

echo
echo "Running Processes:"
ps -ef | wc -l

echo
echo "Server Uptime:"
uptime
