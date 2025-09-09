# system_monitor
 The project includes implementations in Bash, Python, and C++ for cross-platform demonstration and learning purposes.  
 
 Bash script: Monitors system resources on Unix-like systems and prints colored alerts.
 Python script: (To be implemented) Monitors system resources using standard libraries, works on Windows and Linux.
 C++ program: (To be implemented) Monitors system resources using platform-specific APIs. Usage: Each script checks CPU, memory, and disk usage, and   prints an alert if any resource exceeds its threshold.

 System Resource Monitor with Email Alerts

This is a simple Bash-based system resource monitoring script that tracks CPU, memory, and disk usage on a Linux system (tested on Ubuntu/WSL) The script sends email alerts when any of these resources exceed predefined thresholds.

The project was a part of my exploration of Linux command-line tools, Bash scripting, and basic email notifications using mailutils and SMTP

Functionailties:
Used Bash scripting to automate monitoring of system resources.
Linux commands used:

top → to calculate CPU usage.
free → to calculate memory usage percentage.
df → to check disk usage of the root filesystem.

Configured the script to send alert messages via email using SMTP.
Set up mailutils to work with a Gmail account (or any SMTP server), which required specifying the email address, server, and authentication.
Learned how the script interacts with the SMTP server to deliver emails from the command line.
Each alert includes a timestamp to show when the resource exceeded its threshold.
Implemented threshold checks for CPU, memory, and disk, and triggered alerts when thresholds were exceeded.

 #command line
 <img width="1876" height="792" alt="Screenshot 2025-09-09 140534" src="https://github.com/user-attachments/assets/59e8dc4f-189b-45b0-a45d-9aa95d015c7c" />

#demo

<img width="1907" height="850" alt="Screenshot 2025-09-09 142737" src="https://github.com/user-attachments/assets/e2ece7e7-0a2e-474d-9091-1e43e50cdc24" />
