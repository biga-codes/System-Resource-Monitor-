# System Monitoring in Bash with Email Alerts (Configured with Mailutils and SMTP on Ubuntu/WSL)
 
 
The project includes implementations in **Bash**, **Python**, and **C++** for cross-platform demonstration and learning purposes.  

- **Bash script (working)**: Monitors system resources on Unix-like systems and prints colored alerts. Also sends email notifications when thresholds are exceeded.  
- **Python script (planned)**: Will monitor system resources using standard libraries, cross-platform (Windows and Linux).  
- **C++ program (planned)**: Will monitor system resources using platform-specific APIs.  

## About  

This is a simple **Bash-based system resource monitoring script** that tracks CPU, memory, and disk usage on a Linux system (tested on Ubuntu/WSL).  

The script sends **email alerts** when any of these resources exceed predefined thresholds.  

This project was part of my **exploration of Linux command-line tools, Bash scripting, and basic email notifications using mailutils and SMTP**.  






## Features 

- **Bash scripting** to automate monitoring of system resources.  
- **Linux commands used**:  
  - `top` → calculate CPU usage.  
  - `free` → calculate memory usage percentage.  
  - `df` → check disk usage of the root filesystem.  
- **Configured Mailutils** to send alert messages via **SMTP**.  
- Set up Mailutils to work with a Gmail account (or any SMTP server): required email address, server, and authentication.  
- script interaction with **SMTP server** to deliver emails from the command line.  
- Added **timestamps** to alerts for tracking.  
- Implemented **threshold checks** for CPU, memory, and disk usage.  
 

---

 ## command line
 <img width="1876" height="792" alt="Screenshot 2025-09-09 140534" src="https://github.com/user-attachments/assets/59e8dc4f-189b-45b0-a45d-9aa95d015c7c" />

## demo

<img width="1907" height="850" alt="Screenshot 2025-09-09 142737" src="https://github.com/user-attachments/assets/e2ece7e7-0a2e-474d-9091-1e43e50cdc24" />
