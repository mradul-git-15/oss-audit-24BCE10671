#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Mradul Yadav
# Course: Open Source Software

# --- Concept Demonstration ---
# Note on Aliases: An alias is a custom shortcut for a longer command 
# (e.g., alias update='sudo apt update'). We use standard commands 
# in this script to ensure it runs universally without custom aliases.

echo "========================================"
echo "    Open Source Manifesto Generator     "
echo "========================================"
echo "Answer three questions to generate your manifesto."
echo ""

# Using 'read' to capture interactive user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Using the date command with formatting
DATE=$(date +'%d %B %Y')
# Defining the output text file using command substitution
OUTPUT="manifesto_$(whoami).txt"

echo "----------------------------------------"
echo "Drafting your manifesto..."

# Writing to the file using redirection (> to overwrite/create, >> to append)
echo "My Open Source Manifesto" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: $(whoami)" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on open-source tools like $TOOL to build, learn, and create." >> "$OUTPUT"
echo "To me, the true essence of the open-source philosophy can be summarized in one word: $FREEDOM." >> "$OUTPUT"
echo "It is about the liberty to understand, modify, and improve the technology that shapes our world." >> "$OUTPUT"
echo "If I had the opportunity to contribute back to this incredible ecosystem, I would build $BUILD and share it freely with the community, ensuring that the next generation of developers has even stronger shoulders to stand on." >> "$OUTPUT"

echo "[SUCCESS] Manifesto saved to $OUTPUT"
echo "========================================"
echo "Here is your final generated text:"
echo ""

# Displaying the final file content
cat "$OUTPUT"
echo "========================================"
