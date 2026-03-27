#!/bin/bash
# Script 1: System Identity Report
# Author: Mradul Yadav
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Mradul Yadav"
SOFTWARE_CHOICE="Git"

# --- System info (Using command substitution) ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)

# Extracting the distribution name safely
if [ -f /etc/os-release ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
else
    DISTRO=$(uname -s)
fi

CURRENT_DATE=$(date +"%A, %B %d, %Y at %T")

# --- Display Output ---
echo "========================================"
echo "          Open Source Audit             "
echo "========================================"
echo "Student     : $STUDENT_NAME"
echo "Software    : $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "OS/Distro   : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME_DIR"
echo "Uptime      : $UPTIME"
echo "Date/Time   : $CURRENT_DATE"
echo "----------------------------------------"
echo "License Info: The Linux kernel powering this OS is protected by the GNU GPL v2 license."
echo "========================================"
