#!/bin/bash
echo "======================System Information======================"
user_name=$(whoami)
echo "User: ${user_name^^}   " "Host: $(hostname)"
echo "Date: $(date '+%a %b %e %H:%M:%S')"
echo "------------------Uptime Information---------------------"
echo "Full uptime string : $(uptime -p | sed 's/^up //')"
echo "----------Memory Usage (MB)----------------------------"
echo "Total: $(free -m | grep Mem: | awk '{print $2}') | " "Used: $(free -m | grep Mem: | awk '{print $3}') |" "Free Memory: $(free -m | grep Mem: | awk '{print $4}')"
echo "----------Disk Usage (MB)----------------------------"
#df  -h --total | grep 'total' | awk '{print "Total Disk space: "$2"\nUsed Disk space: "$3"\nFree Disk space: "$4}'
echo "Total: $(df -m --total | grep 'total' | awk '{print $2}') | " "Used: $(df -m --total | grep 'total' | awk '{print $3}') |" "Free: $(df -m --total | grep 'total' | awk '{print $4}')"
echo "----------------Processes-----------------"
echo "Total Running Processes: $(ps aux | wc -l)"
echo "----------------Top 5 CPU-consuming processes-----------------"
echo "top 5 memory-consuming processes:"
ps aux --sort=-%mem | head -n 6 | awk '{print $1, $2, $4, $11}'
