# System Info Dashboard Script
This Bash displays detailed **system information**, including user details, uptime, memory usage, disk space and running processes.

## Features
- Shows the current user (in uppercase)
- Displays hostname
- Prints current date and time
- Shows system uptime
- Reports memory usage in MB (total, used, free)
- Reports disk usage in MB (total, used, free)
- Lists total running processes
- Shows top 5 memory-consuming processes

## Usage
Make the script executable
``` bash
chmod +x sysinfo.sh
```

Run it:

``` bash
./sysinfo.sh
```
## File
- **sysinfo.sh** --The main script\
## Commands Used in the Program
- whoami
- hostname
- date
- uptime -p
- df -m --total
- ps aux, awk, grep, sed

## Requirements to Run it
- Bash shell\
- Linux or macOS