#!/bin/bash
echo "----------------System Information---------------------"
 user_name=$(whoami) 
echo "User: ${user_name^^}"
echo "Hostname: $(hostname)"
echo "Current date/time: $(date date +"%a %b %e %H:%M:%S")"
echo "------------------Uptime Information---------------------"
echo "Full uptime string : $(uptime -p | sed 's/^up //')"
echo "----------Memory Usage info(GB)----------------------------"
echo "Total Memory: $(free -h | grep Mem: | awk '{print $2}')"
echo "Used Memory: $(free -h | grep Mem: | awk '{print $3}')"
echo "Free Memory: $(free -h | grep Mem: | awk '{print $4}')"

echo "----------Disk Usage info(GB)----------------------------"
#df  -h --total | grep 'total' | awk '{print "Total Disk space: "$2"\nUsed Disk space: "$3"\nFree Disk space: "$4}'
echo "Total Disk space: $(df -h --total | grep 'total' | awk '{print $2}')"
echo "Used Disk space: $(df -h --total | grep 'total' | awk '{print $3}')"
echo "Free Disk space: $(df -h --total | grep 'total' | awk '{print $4}')"
echo "----------------Running Processes info-----------------"
echo "Total Running Processes: $(ps aux | wc -l)"
echo "top 5 memory-consuming processes:"
ps aux --sort=-%mem | head -n 6 | awk '{print $1, $2, $4, $11}'
