# Open Source Audit Capstone: Git
**Student Name:** Mradul Yadav  
**Registration Number:** 24BCE10671  
**Software Chosen:** Git  

---

##  Project Description
This repository contains the automation scripts developed as part of the Open Source Audit Capstone Project. The project focuses on conducting a technical audit of **Git**, an industry-standard open-source version control system. [cite_start]These scripts demonstrate practical Linux shell scripting concepts—including loops, conditionals, and command substitution—applied to system auditing and package management. [cite: 8, 9, 88]

##  Scripts Included

### 1. `script1.sh` — System Identity Report
This script fetches and displays essential system information including the Linux kernel version, current user, system uptime, and the specific OS distribution. [cite_start]It identifies the open-source license protecting the host kernel. [cite: 88, 89]

### 2. `script2.sh` — FOSS Package Inspector
A dedicated tool to verify if Git is installed on the local system. [cite_start]It pulls the specific version string and package description using `dpkg` and provides a philosophical context for the software. [cite: 127, 128]

### 3. `script3.sh` — Directory & Permission Auditor
Automates the auditing of critical Linux directories (like `/etc` and `/var/log`). [cite_start]It specifically verifies the existence and read/write permissions of the personal `.gitconfig` file in the user's home directory. [cite: 159, 160, 161]

### 4. `script4.sh` — Log File Analyzer
A powerful parsing script that reads system logs line-by-line. [cite_start]It counts occurrences of a specific keyword (such as "install") and displays the most recent matching log entries to track software history. [cite: 202, 203, 204]

### 5. `script5.sh` — Open Source Manifesto Generator
An interactive script that prompts the user for their views on software freedom. [cite_start]It uses string concatenation to generate a personalized "Open Source Manifesto" and saves it to a unique text file. [cite: 234, 235]

---

##  How to Run the Scripts

### Step 1: Navigate to the Project Folder
Open your WSL or Ubuntu terminal and enter the directory where the scripts are stored:
```bash
cd ~/oss-audit-project
Step 2: Grant Execution PermissionsBefore running the scripts, you must allow Linux to execute them:Bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
Step 3: Execute the ScriptsRun them individually using the following commands:Bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/dpkg.log install
./script5.sh
(Note: script4.sh requires two arguments: the log file path and the keyword you want to count.)  RequirementsEnvironment: Ubuntu 24.04 LTS / WSL2 (Linux environment) Shell: Bash Software: Git (for script2.sh and script3.sh verification)
Notes-All scripts were authored and tested in a native Linux (WSL Ubuntu) environment. They demonstrate key programming logic including while loops, if-then-else conditionals, case statements, and standard output redirection. 
