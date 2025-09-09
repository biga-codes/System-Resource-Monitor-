#!/bin/bash
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80 
DISK_THRESHOLD=90

send_alert() {
    echo "$(tput setaf 1)ALERT: $1 usage is at $2%$(tput sgr0)"
}

#arg 1 and 2
send_alert() {
    echo "$(tput setaf 1)ALERT: $1 usage is at $2%$(tput sgr0)"
}

cpu_usage=($ top -bn1 | grep"Cpu(s)"| awk '{print $2 + $4}')
cpu_usage=${cpu_usage%.*}

echo "Current CPU Usage: $cpu_usage%"
if(cpu_usage>=$CPU_THRESHOLD); then
    send_alert "CPU" "$cpu_usage"
fi


#gopik@DESKTOP-FQBHU0J MINGW64 ~/OneDrive/Desktop/c++
#$ chmod +x system_monitor.sh

#gopik@DESKTOP-FQBHU0J MINGW64 ~/OneDrive/Desktop/c++
#$ ./system_monitor.sh
#ALERT: CPU usage is at 85%
#ALERT: Memory usage is at 90%
#ALERT: Disk usage is at 95%*/