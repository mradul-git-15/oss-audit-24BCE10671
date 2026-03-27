#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mradul Yadav
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report           "
echo "========================================"

# Loop through important system directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner/group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get the human-readable size of the directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "Directory: $DIR"
        echo " -> Permissions & Owner: $PERMS"
        echo " -> Size: $SIZE"
        echo "----------------------------------------"
    else
        echo "[WARNING] $DIR does not exist on this system."
        echo "----------------------------------------"
    fi
done

echo "========================================"
echo "      Git Configuration Audit           "
echo "========================================"

# Check if Git's config file exists and print its permissions
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    GIT_PERMS=$(ls -ld "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "[FOUND] Git Global Config: $GIT_CONFIG"
    echo " -> Permissions & Owner: $GIT_PERMS"
else
    echo "[NOT FOUND] Git Global Config: $GIT_CONFIG"
    echo "Creating a basic global config for the audit..."
    
    # Git creates this file automatically when we set a config
    git config --global user.name "Mradul Yadav"
    
    GIT_PERMS=$(ls -ld "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "[CREATED] Git Global Config: $GIT_CONFIG"
    echo " -> Permissions & Owner: $GIT_PERMS"
fi
echo "========================================"
