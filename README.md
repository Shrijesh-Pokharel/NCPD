# Hacker Tools Script

## Disclaimer
This script is for **educational purposes only**. Unauthorized use or any intent to harm systems is **illegal** and **unethical**. Use responsibly and ensure you have proper authorization before using any of the tools or techniques described.

---

## Overview
NCPD refers to Nmap, Crack-password, Port-listening and Directory-scan.
This Bash script provides a menu-driven interface for executing various penetration testing tools and techniques. The tools and techniques included in this script focus on network reconnaissance, password cracking, port listening, and directory brute-forcing. Each of these tasks uses well-known tools such as `nmap`, `hashcat`, `python3`, and `gobuster`.

---

## Features
1. **Network Scan**
   - Scans a target IP address or subnet for open ports and other information.
   - Utilizes `nmap` with the `-sS` and `-A` options for a stealthy and detailed scan.

2. **Password Hash Cracking**
   - Cracks password hashes using `hashcat`.
   - Requires the user to provide the hash file and the hash type format.
   - Uses the `rockyou.txt` wordlist by default for brute force attacks.

3. **Port Listening**
   - Opens a simple HTTP server on a specified port using Python.
   - Useful for testing or serving files.

4. **Directory Brute-forcing**
   - Performs directory brute-forcing on a target URL using `gobuster`.
   - Requires the user to specify the URL and a wordlist file.

5. **Exit**
   - Safely exits the script.

---

## Requirements
### Tools
- **nmap**: For network scanning.
- **hashcat**: For password cracking.
- **Python 3**: For port listening.
- **gobuster**: For directory brute-forcing.
- **rockyou.txt**: A common password wordlist.

### Permissions
Some tools may require elevated permissions (e.g., `sudo`) to function correctly, especially `nmap` for certain scan types.

---

## Usage
1. Make the script executable:
   ```bash
   chmod +x    NCPD.sh
   ```

2. Run the script:
   ```bash
   ./NCPD.sh
   ```

3. Follow the menu prompts to select the desired tool or technique.

---

## Notes
1. **Network Scanning**
   - Ensure you have permission to scan the target network. Unauthorized scanning is illegal.

2. **Password Cracking**
   - Verify that you have explicit permission to crack the password hashes.
   - Use a suitable wordlist if `rockyou.txt` is unavailable.

3. **Port Listening**
   - Make sure the specified port is not in use and is open on your network.

4. **Directory Brute-forcing**
   - Test only on domains or servers you own or have permission to test.

---

## Example Commands
### Network Scan
```bash
Enter target IP/subnet (e.g., 192.168.1.0/24): 192.168.1.0/24
```

### Password Hash Cracking
```bash
Enter path to password hash file: hashes.txt
Enter hash format (on hash number from hashcat): 1000
```

### Port Listening
```bash
Enter port to listen: 8080
```

### Directory Brute-forcing
```bash
Enter target URL (e.g., http://example.com): http://example.com
Enter path to wordlist: directory-list-2.3-small
```

---

## Security Warning
Be mindful of the environments in which you run this script. Misuse can lead to legal consequences. Always obtain proper authorization before conducting security testing.

---
