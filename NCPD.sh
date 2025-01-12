#!/bin/bash

# Disclaimer: This script is for educational purposes only. Unauthorized use or intent to harm systems is illegal and unethical.

# Color Definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Network Reconnaissance 
network_scan() {
    echo -e "${BLUE}[+] Performing network scan...${NC}"
    read -p "Enter target IP/subnet (e.g., 192.168.1.0/24): " target
    nmap -sS -A "$target"
}

# Password Hash Cracking (with John the Ripper)
password_crack() {
    echo -e "${BLUE}[+] Attempting to crack password hashes...${NC}"
    read -p "Enter path to password hash file: " hash_file
    read -p "Enter hash format (on hash number from hashcat): " hash_format
    hashcat -m "$hash_format" -a 3 "$hash_file" /usr/share/wordlists/rockyou.txt

}

# Port Listening
Port_Listening() {
    echo -e "${BLUE}[+] Listening Port...${NC}"
    read -p "Enter port to listen: " port
    python3 -m http.server "$port"
}

# Directory Brute-forcing with Gobuster
directory_bruteforce() {
    echo -e "${BLUE}[+] Performing directory brute-forcing...${NC}"
    read -p "Enter target URL (e.g., http://example.com): " url
    read -p "Enter path to wordlist:(/usr/share/wordlists/dirbuster/directory-list.........txt) " wordlist
    gobuster dir -u "$url" -w /usr/share/wordlists/dirbuster/directory-list-"$wordlist".txt
}

# Function to display a menu
menu() {
    echo -e "${YELLOW}--- Hacker Tools Menu ---${NC}"
    echo "1. Network Scan"
    echo "2. Crack Password Hashes"
    echo "3. Port Listening"
    echo "4. Directory Brute-forcing"
    echo "5. Exit"
    read -p "Select an option: " choice

    case $choice in
        1) network_scan ;;
        2) password_crack ;;
        3) Port_Listening ;;
        4) directory_bruteforce ;;
        5) exit 0 ;;
        *) echo -e "${RED}[!] Invalid option.${NC}" ;;
    esac
}

# Main Script Logic
while true; do
    menu
done

