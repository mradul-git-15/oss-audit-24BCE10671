#!/bin/bash
# Script 4: Log File Analyzer
# Author: Mradul Yadav
# Course: Open Source Software
# Usage: ./script4.sh <logfile> <keyword>

# Assign command-line arguments to variables
LOGFILE=$1
# If no second argument is provided, default to "error"
KEYWORD=${2:-"error"}
COUNT=0

echo "========================================"
echo "          Log File Analyzer             "
echo "========================================"

# Do-while style retry logic: If the file doesn't exist or is empty (! -s)
while [ ! -s "$LOGFILE" ]; do
    echo "[WARNING] File '$LOGFILE' not found or is empty."
    read -p "Please enter a valid log file path (e.g., /var/log/dpkg.log): " LOGFILE
done

echo "Analyzing '$LOGFILE' for the keyword: '$KEYWORD'"
echo "----------------------------------------"

# While-read loop to process the file line by line
while IFS= read -r LINE; do
    # If-then inside the loop to check for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Summary: Keyword '$KEYWORD' found $COUNT times."
echo "----------------------------------------"
echo "Last 5 matching lines:"

# Print the last 5 matching lines using tail + grep
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "========================================"
