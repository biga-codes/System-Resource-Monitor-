#!/bin/bash
CPU_THRESHOLD=8
MEMORY_THRESHOLD=8 
DISK_THRESHOLD=9
#testmail
EMAIL=yourmail@gmail.com
#arg 1 and 2
ALERTS=()
send_alert() {
     local resource=$1
    local usage=$2
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    local alert_msg="$timestamp: ALERT: $resource usage is at $usage%"

    echo "$(tput setaf 1)$alert_msg$(tput sgr0)"
    #echo "$(date): ALERT: $1 usage is at $2%" > system_monitor.log

      ALERTS+=("$alert_msg")

    if [ ${#ALERTS[@]} -gt 5 ]; then
        ALERTS=("${ALERTS[@]: -5}")
    fi
}

cpu_idle=$(top -bn1 | grep "Cpu(s)" | grep -Po '(\d+\.\d+)\s+id' | awk '{print $1}')

cpu_usage=$(echo "100 - $cpu_idle" | bc)
cpu_usage=${cpu_usage%.*} 
cpu_msg="Current CPU Usage: $cpu_usage%"
echo "$cpu_msg"


echo "Current CPU Usage: $cpu_usage%"
if ((cpu_usage >= CPU_THRESHOLD)); then
    send_alert "CPU" "$cpu_usage"
fi

#dec: 10.9
mem_usage=$(free| awk '/Mem/{printf("%3.1f", $3/$2 * 100.0)}')
mem_usage=${mem_usage%.*}
mem_msg="Current Memory Usage: $mem_usage%"
echo "$mem_msg"
if ((mem_usage>=$MEMORY_THRESHOLD)); then
    send_alert "MEMORY" "$mem_usage"
fi

#only for root fs
# disk_usage=$(df -h| awk "/\// {print $NF-1}") deprecated
disk_usage=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
disk_usage=${disk_usage%.*}
disk_msg="Current Disk Usage: $disk_usage%"
echo "$disk_msg"
if ((disk_usage>=$DISK_THRESHOLD)); then
    send_alert "DISK" "$disk_usage"
fi

ALERTS+=("$cpu_msg")
ALERTS+=("$mem_msg")
ALERTS+=("$disk_msg")

# no of alrts
if [ ${#ALERTS[@]} -gt 0 ]; then
    message="System Alert! CPU,DISK,MEM:\n\n"
    for alert in "${ALERTS[@]}"; do
        message+="$alert\n"
    done
    echo -e "$message" | mail -s "System Alert: Resource Usage High" "$EMAIL"
fi




#$ chmod +x system_monitor.sh
#$ ./system_monitor.sh
#ALERT: CPU usage is at 85%
#ALERT: Memory usage is at 90%
#ALERT: Disk usage is at 95%