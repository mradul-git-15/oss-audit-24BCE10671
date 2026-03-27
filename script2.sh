#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Mradul Yadav
# Course: Open Source Software

PACKAGE="git"

echo "========================================"
echo "        FOSS Package Inspector          "
echo "========================================"
echo "Checking status for: $PACKAGE"

# Check if package is installed using dpkg (standard for Debian/Ubuntu)
if dpkg -l "$PACKAGE" &> /dev/null; then
    echo "[SUCCESS] $PACKAGE is installed."
    echo "--- Package Details ---"
    # Display version and description
    dpkg -s "$PACKAGE" | grep -E 'Version|Description' | head -n 2
else
    echo "[WARNING] $PACKAGE is NOT installed."
    echo "You can install it using: sudo apt install $PACKAGE"
fi

echo "----------------------------------------"

# Case statement to print a philosophy note based on the package name
case $PACKAGE in
    httpd|apache2)
        echo "Philosophy Note: Apache - the web server that built the open internet."
        ;;
    mysql|mysql-server)
        echo "Philosophy Note: MySQL - open source at the heart of millions of apps."
        ;;
    git)
        echo "Philosophy Note: Git - The tool Linus built when proprietary failed him."
        ;;
    python3)
        echo "Philosophy Note: Python - A language shaped entirely by community."
        ;;
    *)
        echo "Philosophy Note: A powerful piece of open-source software."
        ;;
esac

echo "========================================"
