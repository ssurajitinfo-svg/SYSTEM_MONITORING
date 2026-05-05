#!/bin/bash

#==============================================
#System Monitoring Script
#==============================================

echo "==========================================="
echo "      SYSTEM MONITORING DASHBOARD"
echo " Date=$(date)"
echo "==========================================="
echo "    "
# CPU Usage
echo "CPU Usage"
top -bn1 | grep "Cpu(s)"
echo "   "
# Memory Usage 
echo "Memory Usage"
free -h
echo "  "
#Disk Usage
echo "   "
echo "Disk Usage"
df -hT | grep "Filesystem"
df -hT | grep "sda"
echo " "
# Top 5 Processes by CPU
echo "Top 5 Processes by CPU"
ps -eo pid,comm,%cpu --sort=%cpu | head -n 6
echo "       "
# Top 5 processed by Memory
echo " Top 5 Processes by Memory"
ps -eo pid,comm,%mem --sort=%mem | head -n 6
# Logged-in Users
echo "         "
echo "Logged-in Users"
who
echo "          "
#System uptime
echo "System Uptime"
uptime

echo " "

echo "=========================================="
echo "End Of The Report"
echo "=========================================="
